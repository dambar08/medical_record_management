require 'rails_helper'

RSpec.describe "announcements/index", type: :view do
  before(:each) do
    assign(:announcements, [
      Announcement.create!(
        title: "Title",
        announcement_type: "Announcement Type",
        message: "MyText"
      ),
      Announcement.create!(
        title: "Title",
        announcement_type: "Announcement Type",
        message: "MyText"
      )
    ])
  end

  it "renders a list of announcements" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Announcement Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
