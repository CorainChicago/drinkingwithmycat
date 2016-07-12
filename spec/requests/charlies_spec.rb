require 'rails_helper'

RSpec.describe "Charlies", type: :request do
  describe "GET /charlies" do
    it "works! (now write some real specs)" do
      get charlies_path
      expect(response).to have_http_status(200)
    end
  end
end
