require 'rails_helper'

RSpec.describe "admins/beds/index", type: :view do
  before(:each) do
    assign(:beds, [
      Bed.create!(),
      Bed.create!()
    ])
  end

  it "renders a list of admins/beds" do
    render
    cell_selector = 'div>p'
  end
end
