require 'rails_helper'

RSpec.describe "admins/patients/conditions/new", type: :view do
  before(:each) do
    assign(:condition, Condition.new())
  end

  it "renders new admins/patients_condition form" do
    render

    assert_select "form[action=?][method=?]", admins_patients_conditions_path, "post" do
    end
  end
end
