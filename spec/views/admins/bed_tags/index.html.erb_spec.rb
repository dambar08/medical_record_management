require 'rails_helper'

RSpec.describe "admins/bed_tags/index", type: :view do
  before(:each) do
    assign(:bed_tags, [
      BedTag.create!(),
      BedTag.create!()
    ])
  end

  it "renders a list of admins/bed_tags" do
    render
    cell_selector = 'div>p'
  end
end
