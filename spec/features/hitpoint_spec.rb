require 'spec_helper'

feature 'hit points' do
  scenario 'show players hit points' do
    visit('/')
    fill_in :player_1_name, with: "John"
    fill_in :player_2_name, with: "Dave"
    click_button "Submit"
    expect(page).to have_content "Dave HP: 50"
  end

end





