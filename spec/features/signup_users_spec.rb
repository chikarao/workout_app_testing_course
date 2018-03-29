require 'rails_helper'

RSpec.feature "Sign up Users" do
  scenario "With valid credentials" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"

    expect(page).to have_content("Welcome! You have signed up successfully.")
    # expect().to eq 200
    # expect(path). to eq(path)
  end
  # context "User does not supply required credentials" do
  #   visit "/"
  #   click_link "Sign up"
  #   fill_in "Email", with: ""
  #   fill_in "Password", with: ""
  #   fill_in "Password Confirmation" with: ""
  #   click_button "Sign up"
  #
  #   expect(page).to have_content("You must provide email and password")
  #   expect().to eq 200
  #   expect(path). to eq(path)
  # end
end
