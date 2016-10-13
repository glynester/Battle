#require 'spec_helper'

feature 'hit points' do
  scenario 'show players hit points' do
    sign_in_and_play
    expect(page).to have_content "Mittens HP: 50"
  end
  
  # scenario 'show player 1\'s hitpoints.' do
  #   sign_in_and_play
  #   click_button "Attack"
  #   click_link "OK"
  #   expect(page).to have_content "Dave's HP: 50"
  # end
  
end
