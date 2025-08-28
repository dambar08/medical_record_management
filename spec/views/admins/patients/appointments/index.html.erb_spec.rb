require 'rails_helper'

RSpec.describe "admins/patients/appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(),
      Appointment.create!()
    ])
  end

  it "renders a list of admins/patients/appointments" do
    render
    cell_selector = 'div>p'
  end
end
