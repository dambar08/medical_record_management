require 'rails_helper'

RSpec.describe "admins/bed_tags/edit", type: :view do
  let(:bed_tag) {
    BedTag.create!()
  }

  before(:each) do
    assign(:bed_tag, bed_tag)
  end

  it "renders the edit admins_bed_tag form" do
    render

    assert_select "form[action=?][method=?]", admins_bed_tag_path(bed_tag), "post" do
    end
  end
end
