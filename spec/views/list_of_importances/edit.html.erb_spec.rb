require 'rails_helper'

RSpec.describe "list_of_importances/edit", type: :view do
  before(:each) do
    @list_of_importance = assign(:list_of_importance, ListOfImportance.create!())
  end

  it "renders the edit list_of_importance form" do
    render

    assert_select "form[action=?][method=?]", list_of_importance_path(@list_of_importance), "post" do
    end
  end
end
