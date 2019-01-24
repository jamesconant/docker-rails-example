require 'rails_helper'

RSpec.describe "HealthChecks", type: :request do
  describe "GET /health_checks" do
    it "works! (now write some real specs)" do
      get health_checks_path
      expect(response).to have_http_status(200)
    end
  end
end
