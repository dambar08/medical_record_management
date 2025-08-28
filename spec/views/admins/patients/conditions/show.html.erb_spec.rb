require 'rails_helper'

RSpec.describe "admins/patients/conditions/show", type: :view do
  before(:each) do
    assign(:condition, Condition.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
