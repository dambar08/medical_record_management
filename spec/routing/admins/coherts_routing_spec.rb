require "rails_helper"

RSpec.describe Admins::CohertsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admins/coherts").to route_to("admins/coherts#index")
    end

    it "routes to #new" do
      expect(get: "/admins/coherts/new").to route_to("admins/coherts#new")
    end

    it "routes to #show" do
      expect(get: "/admins/coherts/1").to route_to("admins/coherts#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admins/coherts/1/edit").to route_to("admins/coherts#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admins/coherts").to route_to("admins/coherts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admins/coherts/1").to route_to("admins/coherts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admins/coherts/1").to route_to("admins/coherts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admins/coherts/1").to route_to("admins/coherts#destroy", id: "1")
    end
  end
end
