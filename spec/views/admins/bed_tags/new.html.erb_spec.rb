require 'rails_helper'

RSpec.describe "admins/bed_tags/new", type: :view do
  before(:each) do
    assign(:bed_tag, BedTag.new())
  end

  it "renders new admins_bed_tag form" do
    render

    assert_select "form[action=?][method=?]", admins_bed_tags_path, "post" do
    end
  end
end
