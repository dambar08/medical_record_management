require 'rails_helper'

RSpec.describe "admins/patients/conditions/edit", type: :view do
  let(:condition) {
    Condition.create!()
  }

  before(:each) do
    assign(:condition, condition)
  end

  it "renders the edit admins/patients_condition form" do
    render

    assert_select "form[action=?][method=?]", admins/patients_condition_path(condition), "post" do
    end
  end
end
