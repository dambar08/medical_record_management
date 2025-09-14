require 'rails_helper'

RSpec.describe "admins/bed_types/edit", type: :view do
  let(:bed_type) {
    BedType.create!()
  }

  before(:each) do
    assign(:bed_type, bed_type)
  end

  it "renders the edit admins_bed_type form" do
    render

    assert_select "form[action=?][method=?]", admins_bed_type_path(bed_type), "post" do
    end
  end
end
