require 'rails_helper'

RSpec.describe "list_of_importances/new", type: :view do
  before(:each) do
    assign(:list_of_importance, ListOfImportance.new())
  end

  it "renders new list_of_importance form" do
    render

    assert_select "form[action=?][method=?]", list_of_importances_path, "post" do
    end
  end
end
