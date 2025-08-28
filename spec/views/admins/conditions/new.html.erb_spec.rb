require 'rails_helper'

RSpec.describe "admins/conditions/new", type: :view do
  before(:each) do
    assign(:condition, Condition.new())
  end

  it "renders new admins_condition form" do
    render

    assert_select "form[action=?][method=?]", admins_conditions_path, "post" do
    end
  end
end
