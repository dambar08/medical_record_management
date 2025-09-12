class ApplicationRecord < ActiveRecord::Base

  include ActiveRecord::Updatable

  primary_abstract_class
  has_paper_trail

  QUERY_ESTIMATED_COUNT = <<~SQL.squish.freeze
    SELECT (
      (reltuples / GREATEST(relpages, 1)) *
      (pg_relation_size(?) / (GREATEST(current_setting('block_size')::integer, 1)))
    )::bigint AS count
    FROM pg_class
    WHERE relname = ? AND relkind = 'r';
  SQL

  def self.estimated_count
    query = sanitize_sql_array([ QUERY_ESTIMATED_COUNT, table_name, table_name ])
    result = connection.execute(query)

    count = result.first["count"]
    result.clear # PG::Result is manually managed in memory, we need to release its resources
    count
  end
end
