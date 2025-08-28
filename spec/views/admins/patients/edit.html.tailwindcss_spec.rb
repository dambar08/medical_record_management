require 'rails_helper'

RSpec.describe "admins/patients/edit", type: :view do
  let(:patient) {
    Patient.create!()
  }

  before(:each) do
    assign(:patient, patient)
  end

  it "renders the edit admins_patient form" do
    render

    assert_select "form[action=?][method=?]", admins_patient_path(patient), "post" do
    end
  end
end
