require "rails_helper"

RSpec.describe Admins::Patients::ConditionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admins/patients/conditions").to route_to("admins/patients/conditions#index")
    end

    it "routes to #new" do
      expect(get: "/admins/patients/conditions/new").to route_to("admins/patients/conditions#new")
    end

    it "routes to #show" do
      expect(get: "/admins/patients/conditions/1").to route_to("admins/patients/conditions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admins/patients/conditions/1/edit").to route_to("admins/patients/conditions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admins/patients/conditions").to route_to("admins/patients/conditions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admins/patients/conditions/1").to route_to("admins/patients/conditions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admins/patients/conditions/1").to route_to("admins/patients/conditions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admins/patients/conditions/1").to route_to("admins/patients/conditions#destroy", id: "1")
    end
  end
end
