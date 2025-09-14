require 'rails_helper'

RSpec.describe "admins/bed_types/new", type: :view do
  before(:each) do
    assign(:bed_type, BedType.new())
  end

  it "renders new admins_bed_type form" do
    render

    assert_select "form[action=?][method=?]", admins_bed_types_path, "post" do
    end
  end
end
