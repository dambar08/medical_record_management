require 'rails_helper'

RSpec.describe "admins/patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(),
      Patient.create!()
    ])
  end

  it "renders a list of admins/patients" do
    render
    cell_selector = 'div>p'
  end
end
