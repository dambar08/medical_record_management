require 'rails_helper'

RSpec.describe "admins/conditions/index", type: :view do
  before(:each) do
    assign(:conditions, [
      Condition.create!(),
      Condition.create!()
    ])
  end

  it "renders a list of admins/conditions" do
    render
    cell_selector = 'div>p'
  end
end
