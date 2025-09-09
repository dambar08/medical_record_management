require 'rails_helper'

RSpec.describe "admins/newsletter_subscriptions/index", type: :view do
  before(:each) do
    assign(:newsletter_subscriptions, [
      NewsletterSubscription.create!(),
      NewsletterSubscription.create!()
    ])
  end

  it "renders a list of admins/newsletter_subscriptions" do
    render
    cell_selector = 'div>p'
  end
end
