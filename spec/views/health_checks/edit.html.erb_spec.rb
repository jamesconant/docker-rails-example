require 'rails_helper'

RSpec.describe "health_checks/edit", type: :view do
  before(:each) do
    @health_check = assign(:health_check, HealthCheck.create!())
  end

  it "renders the edit health_check form" do
    render

    assert_select "form[action=?][method=?]", health_check_path(@health_check), "post" do
    end
  end
end
