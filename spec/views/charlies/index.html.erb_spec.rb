require 'rails_helper'

RSpec.describe "charlies/index", type: :view do
  before(:each) do
    assign(:charlies, [
      Charlie.create!(
        :description => "MyText",
        :creator => 2,
        :photo => "Photo"
      ),
      Charlie.create!(
        :description => "MyText",
        :creator => 2,
        :photo => "Photo"
      )
    ])
  end

  it "renders a list of charlies" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
  end
end
