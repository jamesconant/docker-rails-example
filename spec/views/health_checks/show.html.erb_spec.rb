require 'rails_helper'

RSpec.describe "health_checks/show", type: :view do
  before(:each) do
    @health_check = assign(:health_check, HealthCheck.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
