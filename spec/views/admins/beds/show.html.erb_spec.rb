require 'rails_helper'

RSpec.describe "admins/beds/show", type: :view do
  before(:each) do
    assign(:bed, Bed.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
