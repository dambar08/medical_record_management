require 'rails_helper'

RSpec.describe "admins/bed_types/index", type: :view do
  before(:each) do
    assign(:bed_types, [
      BedType.create!(),
      BedType.create!()
    ])
  end

  it "renders a list of admins/bed_types" do
    render
    cell_selector = 'div>p'
  end
end
