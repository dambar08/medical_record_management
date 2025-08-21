require "rails_helper"

RSpec.describe Admins::PatientsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admins/patients").to route_to("admins/patients#index")
    end

    it "routes to #new" do
      expect(get: "/admins/patients/new").to route_to("admins/patients#new")
    end

    it "routes to #show" do
      expect(get: "/admins/patients/1").to route_to("admins/patients#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admins/patients/1/edit").to route_to("admins/patients#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admins/patients").to route_to("admins/patients#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admins/patients/1").to route_to("admins/patients#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admins/patients/1").to route_to("admins/patients#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admins/patients/1").to route_to("admins/patients#destroy", id: "1")
    end
  end
end
