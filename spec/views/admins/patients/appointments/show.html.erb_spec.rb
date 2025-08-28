require 'rails_helper'

RSpec.describe "admins/patients/appointments/show", type: :view do
  before(:each) do
    assign(:appointment, Appointment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
