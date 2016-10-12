require 'spec_helper'

feature 'attacking' do
  scenario 'Attack player 2 and get a confirmation' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Mittens was attacked."
  end
  
  scenario "attack player 2 reduces player HP by 10" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Mittens HP: 40"
  end
  
end  
