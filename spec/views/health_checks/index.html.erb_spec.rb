require 'rails_helper'

RSpec.describe "health_checks/index", type: :view do
  before(:each) do
    assign(:health_checks, [
      HealthCheck.create!(),
      HealthCheck.create!()
    ])
  end

  it "renders a list of health_checks" do
    render
  end
end
