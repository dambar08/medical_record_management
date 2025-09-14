require 'rails_helper'

RSpec.describe "admins/bed_types/show", type: :view do
  before(:each) do
    assign(:bed_type, BedType.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
