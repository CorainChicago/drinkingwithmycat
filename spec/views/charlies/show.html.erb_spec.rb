require 'rails_helper'

RSpec.describe "charlies/show", type: :view do
  before(:each) do
    @charlie = assign(:charlie, Charlie.create!(
      :description => "MyText",
      :creator => 2,
      :photo => "Photo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Photo/)
  end
end
