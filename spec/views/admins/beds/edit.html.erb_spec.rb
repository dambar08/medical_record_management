require 'rails_helper'

RSpec.describe "admins/beds/edit", type: :view do
  let(:bed) {
    Bed.create!()
  }

  before(:each) do
    assign(:bed, bed)
  end

  it "renders the edit admins_bed form" do
    render

    assert_select "form[action=?][method=?]", admins_bed_path(bed), "post" do
    end
  end
end
