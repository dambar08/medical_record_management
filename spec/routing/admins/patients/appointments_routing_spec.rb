require "rails_helper"

RSpec.describe Admins::Patients::AppointmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admins/patients/appointments").to route_to("admins/patients/appointments#index")
    end

    it "routes to #new" do
      expect(get: "/admins/patients/appointments/new").to route_to("admins/patients/appointments#new")
    end

    it "routes to #show" do
      expect(get: "/admins/patients/appointments/1").to route_to("admins/patients/appointments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admins/patients/appointments/1/edit").to route_to("admins/patients/appointments#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admins/patients/appointments").to route_to("admins/patients/appointments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admins/patients/appointments/1").to route_to("admins/patients/appointments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admins/patients/appointments/1").to route_to("admins/patients/appointments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admins/patients/appointments/1").to route_to("admins/patients/appointments#destroy", id: "1")
    end
  end
end
