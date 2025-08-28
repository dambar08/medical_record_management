require 'rails_helper'

RSpec.describe "admins/coherts/index", type: :view do
  before(:each) do
    assign(:coherts, [
      Cohert.create!(),
      Cohert.create!()
    ])
  end

  it "renders a list of admins/coherts" do
    render
    cell_selector = 'div>p'
  end
end
