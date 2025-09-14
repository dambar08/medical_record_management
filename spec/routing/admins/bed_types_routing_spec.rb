require "rails_helper"

RSpec.describe Admins::BedTypesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admins/bed_types").to route_to("admins/bed_types#index")
    end

    it "routes to #new" do
      expect(get: "/admins/bed_types/new").to route_to("admins/bed_types#new")
    end

    it "routes to #show" do
      expect(get: "/admins/bed_types/1").to route_to("admins/bed_types#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admins/bed_types/1/edit").to route_to("admins/bed_types#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admins/bed_types").to route_to("admins/bed_types#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admins/bed_types/1").to route_to("admins/bed_types#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admins/bed_types/1").to route_to("admins/bed_types#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admins/bed_types/1").to route_to("admins/bed_types#destroy", id: "1")
    end
  end
end
