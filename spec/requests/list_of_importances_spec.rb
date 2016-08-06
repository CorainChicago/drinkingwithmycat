require 'rails_helper'

RSpec.describe "ListOfImportances", type: :request do
  describe "GET /list_of_importances" do
    it "works! (now write some real specs)" do
      get list_of_importances_path
      expect(response).to have_http_status(200)
    end
  end
end
