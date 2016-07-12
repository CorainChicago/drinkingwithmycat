require 'rails_helper'

RSpec.describe "charlies/new", type: :view do
  before(:each) do
    assign(:charlie, Charlie.new(
      :description => "MyText",
      :creator => 1,
      :photo => "MyString"
    ))
  end

  it "renders new charlie form" do
    render

    assert_select "form[action=?][method=?]", charlies_path, "post" do

      assert_select "textarea#charlie_description[name=?]", "charlie[description]"

      assert_select "input#charlie_creator[name=?]", "charlie[creator]"

      assert_select "input#charlie_photo[name=?]", "charlie[photo]"
    end
  end
end
