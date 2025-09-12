require 'rails_helper'

RSpec.describe "admins/beds/new", type: :view do
  before(:each) do
    assign(:bed, Bed.new())
  end

  it "renders new admins_bed form" do
    render

    assert_select "form[action=?][method=?]", admins_beds_path, "post" do
    end
  end
end
