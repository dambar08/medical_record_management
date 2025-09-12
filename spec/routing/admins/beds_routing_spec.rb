require "rails_helper"

RSpec.describe Admins::BedsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admins/beds").to route_to("admins/beds#index")
    end

    it "routes to #new" do
      expect(get: "/admins/beds/new").to route_to("admins/beds#new")
    end

    it "routes to #show" do
      expect(get: "/admins/beds/1").to route_to("admins/beds#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admins/beds/1/edit").to route_to("admins/beds#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admins/beds").to route_to("admins/beds#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admins/beds/1").to route_to("admins/beds#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admins/beds/1").to route_to("admins/beds#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admins/beds/1").to route_to("admins/beds#destroy", id: "1")
    end
  end
end
