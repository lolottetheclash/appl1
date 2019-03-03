require 'rails_helper'

RSpec.describe "Avis", type: :request do
  describe "GET /avis" do
    it "works! (now write some real specs)" do
      get avis_path
      expect(response).to have_http_status(200)
    end
  end
end
