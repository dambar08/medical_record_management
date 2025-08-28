require 'rails_helper'

RSpec.describe "admins/coherts/edit", type: :view do
  let(:cohert) {
    Cohert.create!()
  }

  before(:each) do
    assign(:cohert, cohert)
  end

  it "renders the edit admins_cohert form" do
    render

    assert_select "form[action=?][method=?]", admins_cohert_path(cohert), "post" do
    end
  end
end
