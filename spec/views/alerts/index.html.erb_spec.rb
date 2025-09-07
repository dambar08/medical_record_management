require 'rails_helper'

RSpec.describe "alerts/index", type: :view do
  before(:each) do
    assign(:alerts, [
      Alert.create!(),
      Alert.create!()
    ])
  end

  it "renders a list of alerts" do
    render
    cell_selector = 'div>p'
  end
end
