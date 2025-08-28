require 'rails_helper'

RSpec.describe "admins/patients/appointments/new", type: :view do
  before(:each) do
    assign(:appointment, Appointment.new())
  end

  it "renders new admins/patients_appointment form" do
    render

    assert_select "form[action=?][method=?]", admins_patients_appointments_path, "post" do
    end
  end
end
