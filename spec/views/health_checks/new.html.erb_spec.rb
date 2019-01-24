require 'rails_helper'

RSpec.describe "health_checks/new", type: :view do
  before(:each) do
    assign(:health_check, HealthCheck.new())
  end

  it "renders new health_check form" do
    render

    assert_select "form[action=?][method=?]", health_checks_path, "post" do
    end
  end
end
