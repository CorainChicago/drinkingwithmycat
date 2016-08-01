require 'rails_helper'

RSpec.describe "list_of_importances/index", type: :view do
  before(:each) do
    assign(:list_of_importances, [
      ListOfImportance.create!(),
      ListOfImportance.create!()
    ])
  end

  it "renders a list of list_of_importances" do
    render
  end
end
