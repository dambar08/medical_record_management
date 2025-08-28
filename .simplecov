unless ENV["COVERAGE"] == "false"
  SimpleCov.coverage_dir("coverage/simplecov")
  SimpleCov.start "rails" do
    add_filter "/spec/"

    enable_coverage :branch

    add_group "Decorators", "app/decorators"
    add_group "Errors", "app/errors"
    add_group "Policies", "app/policies"
    add_group "Queries", "app/queries"
    add_group "Reflexes", "app/reflexes"
    add_group "Sanitizers", "app/sanitizers"
    add_group "Serializers", "app/serializers"
    add_group "Services", "app/services"
    add_group "Validators", "app/validators"
  end
end
