# == Schema Information
#
# Table name: announcements
#
#  id                :integer          not null, primary key
#  title             :string
#  announcement_type :string
#  message           :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe Announcement, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
