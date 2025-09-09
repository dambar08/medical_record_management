require 'rails_helper'

RSpec.describe "admins/newsletter_subscriptions/edit", type: :view do
  let(:newsletter_subscription) {
    NewsletterSubscription.create!()
  }

  before(:each) do
    assign(:newsletter_subscription, newsletter_subscription)
  end

  it "renders the edit admins_newsletter_subscription form" do
    render

    assert_select "form[action=?][method=?]", admins_newsletter_subscription_path(newsletter_subscription), "post" do
    end
  end
end
