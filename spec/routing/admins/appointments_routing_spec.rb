require "rails_helper"

RSpec.describe Admins::AppointmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admins/appointments").to route_to("admins/appointments#index")
    end

    it "routes to #new" do
      expect(get: "/admins/appointments/new").to route_to("admins/appointments#new")
    end

    it "routes to #show" do
      expect(get: "/admins/appointments/1").to route_to("admins/appointments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admins/appointments/1/edit").to route_to("admins/appointments#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admins/appointments").to route_to("admins/appointments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admins/appointments/1").to route_to("admins/appointments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admins/appointments/1").to route_to("admins/appointments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admins/appointments/1").to route_to("admins/appointments#destroy", id: "1")
    end
  end
end
