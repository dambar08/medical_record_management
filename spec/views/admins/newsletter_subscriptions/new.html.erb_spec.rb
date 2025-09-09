require 'rails_helper'

RSpec.describe "admins/newsletter_subscriptions/new", type: :view do
  before(:each) do
    assign(:newsletter_subscription, NewsletterSubscription.new())
  end

  it "renders new admins_newsletter_subscription form" do
    render

    assert_select "form[action=?][method=?]", admins_newsletter_subscriptions_path, "post" do
    end
  end
end
