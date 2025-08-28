require 'rails_helper'

RSpec.describe "admins/coherts/new", type: :view do
  before(:each) do
    assign(:cohert, Cohert.new())
  end

  it "renders new admins_cohert form" do
    render

    assert_select "form[action=?][method=?]", admins_coherts_path, "post" do
    end
  end
end
