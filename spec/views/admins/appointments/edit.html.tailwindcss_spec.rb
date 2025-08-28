require 'rails_helper'

RSpec.describe "admins/appointments/edit", type: :view do
  let(:appointment) {
    Appointment.create!()
  }

  before(:each) do
    assign(:appointment, appointment)
  end

  it "renders the edit admins_appointment form" do
    render

    assert_select "form[action=?][method=?]", admins_appointment_path(appointment), "post" do
    end
  end
end
