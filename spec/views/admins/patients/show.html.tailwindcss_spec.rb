require 'rails_helper'

RSpec.describe "admins/patients/show", type: :view do
  before(:each) do
    assign(:patient, Patient.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
