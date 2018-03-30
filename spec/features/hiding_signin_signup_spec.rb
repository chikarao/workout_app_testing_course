require 'rails_helper'

RSpec.feature "Hide sign in and sign up upon log in" do
  before do
    @john = User.create(email: "john@example.com", password: "password")
  end

  scenario do
    visit "/"
    click_link "Sign in"
    fill_in "Email", with: @john.email
    fill_in "Password", with: @john.password
    click_button "Log in"

    expect(page).to have_content("Sign out")
    expect(page).not_to have_content("Sign up")
    expect(page).not_to have_content("Sign in")
  end
end
