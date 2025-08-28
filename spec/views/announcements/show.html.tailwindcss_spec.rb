require 'rails_helper'

RSpec.describe "announcements/show", type: :view do
  before(:each) do
    assign(:announcement, Announcement.create!(
      title: "Title",
      announcement_type: "Announcement Type",
      message: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Announcement Type/)
    expect(rendered).to match(/MyText/)
  end
end
