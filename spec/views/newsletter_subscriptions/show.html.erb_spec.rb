require 'rails_helper'

RSpec.describe "newsletter_subscriptions/show", type: :view do
  before(:each) do
    assign(:newsletter_subscription, NewsletterSubscription.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
