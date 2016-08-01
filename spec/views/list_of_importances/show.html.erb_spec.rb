require 'rails_helper'

RSpec.describe "list_of_importances/show", type: :view do
  before(:each) do
    @list_of_importance = assign(:list_of_importance, ListOfImportance.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
