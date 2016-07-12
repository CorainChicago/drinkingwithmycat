require 'rails_helper'

RSpec.describe "charlies/edit", type: :view do
  before(:each) do
    @charlie = assign(:charlie, Charlie.create!(
      :description => "MyText",
      :creator => 1,
      :photo => "MyString"
    ))
  end

  it "renders the edit charlie form" do
    render

    assert_select "form[action=?][method=?]", charlie_path(@charlie), "post" do

      assert_select "textarea#charlie_description[name=?]", "charlie[description]"

      assert_select "input#charlie_creator[name=?]", "charlie[creator]"

      assert_select "input#charlie_photo[name=?]", "charlie[photo]"
    end
  end
end
