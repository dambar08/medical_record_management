require "rails_helper"

RSpec.describe Admins::BedTagsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admins/bed_tags").to route_to("admins/bed_tags#index")
    end

    it "routes to #new" do
      expect(get: "/admins/bed_tags/new").to route_to("admins/bed_tags#new")
    end

    it "routes to #show" do
      expect(get: "/admins/bed_tags/1").to route_to("admins/bed_tags#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admins/bed_tags/1/edit").to route_to("admins/bed_tags#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admins/bed_tags").to route_to("admins/bed_tags#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admins/bed_tags/1").to route_to("admins/bed_tags#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admins/bed_tags/1").to route_to("admins/bed_tags#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admins/bed_tags/1").to route_to("admins/bed_tags#destroy", id: "1")
    end
  end
end
