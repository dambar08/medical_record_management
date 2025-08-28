require 'rails_helper'

RSpec.describe "admins/conditions/edit", type: :view do
  let(:condition) {
    Condition.create!()
  }

  before(:each) do
    assign(:condition, condition)
  end

  it "renders the edit admins_condition form" do
    render

    assert_select "form[action=?][method=?]", admins_condition_path(condition), "post" do
    end
  end
end
