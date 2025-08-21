require 'rails_helper'

RSpec.describe "announcements/edit", type: :view do
  let(:announcement) {
    Announcement.create!(
      title: "MyString",
      announcement_type: "MyString",
      message: "MyText"
    )
  }

  before(:each) do
    assign(:announcement, announcement)
  end

  it "renders the edit announcement form" do
    render

    assert_select "form[action=?][method=?]", announcement_path(announcement), "post" do
      assert_select "input[name=?]", "announcement[title]"

      assert_select "input[name=?]", "announcement[announcement_type]"

      assert_select "textarea[name=?]", "announcement[message]"
    end
  end
end
