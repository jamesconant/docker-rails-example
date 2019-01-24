require 'rails_helper'

describe "Can create a Health Check with js powered form" do
  it "works" do
    visit new_health_check_path
    fill_in 'health_check_note', with: 'A note.'
    click_on 'Create Health check'
    expect(page).to have_content("Health check was successfully created.")
  end
end
