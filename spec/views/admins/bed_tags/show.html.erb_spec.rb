require 'rails_helper'

RSpec.describe "admins/bed_tags/show", type: :view do
  before(:each) do
    assign(:bed_tag, BedTag.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
