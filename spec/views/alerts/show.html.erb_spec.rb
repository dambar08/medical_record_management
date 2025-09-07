require 'rails_helper'

RSpec.describe "alerts/show", type: :view do
  before(:each) do
    assign(:alert, Alert.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
