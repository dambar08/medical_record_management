require "rails_helper"

RSpec.describe Admins::NewsletterSubscriptionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/admins/newsletter_subscriptions").to route_to("admins/newsletter_subscriptions#index")
    end

    it "routes to #new" do
      expect(get: "/admins/newsletter_subscriptions/new").to route_to("admins/newsletter_subscriptions#new")
    end

    it "routes to #show" do
      expect(get: "/admins/newsletter_subscriptions/1").to route_to("admins/newsletter_subscriptions#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/admins/newsletter_subscriptions/1/edit").to route_to("admins/newsletter_subscriptions#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/admins/newsletter_subscriptions").to route_to("admins/newsletter_subscriptions#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/admins/newsletter_subscriptions/1").to route_to("admins/newsletter_subscriptions#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/admins/newsletter_subscriptions/1").to route_to("admins/newsletter_subscriptions#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/admins/newsletter_subscriptions/1").to route_to("admins/newsletter_subscriptions#destroy", id: "1")
    end
  end
end
