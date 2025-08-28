require "rails_helper"

RSpec.describe Admins::ConditionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admins/conditions").to route_to("admins/conditions#index")
    end

    it "routes to #new" do
      expect(get: "/admins/conditions/new").to route_to("admins/conditions#new")
    end

    it "routes to #show" do
      expect(get: "/admins/conditions/1").to route_to("admins/conditions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admins/conditions/1/edit").to route_to("admins/conditions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admins/conditions").to route_to("admins/conditions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admins/conditions/1").to route_to("admins/conditions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admins/conditions/1").to route_to("admins/conditions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admins/conditions/1").to route_to("admins/conditions#destroy", id: "1")
    end
  end
end
