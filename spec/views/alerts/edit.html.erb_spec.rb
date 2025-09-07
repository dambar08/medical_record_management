require 'rails_helper'

RSpec.describe "alerts/edit", type: :view do
  let(:alert) {
    Alert.create!()
  }

  before(:each) do
    assign(:alert, alert)
  end

  it "renders the edit alert form" do
    render

    assert_select "form[action=?][method=?]", alert_path(alert), "post" do
    end
  end
end
