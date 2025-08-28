require 'rails_helper'

RSpec.describe "admins/patients/new", type: :view do
  before(:each) do
    assign(:patient, Patient.new())
  end

  it "renders new admins_patient form" do
    render

    assert_select "form[action=?][method=?]", admins_patients_path, "post" do
    end
  end
end
