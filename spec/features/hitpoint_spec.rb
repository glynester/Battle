#require 'spec_helper'

feature 'view hit points' do
  scenario 'show players hit points' do
    sign_in_and_play
    expect(page).to have_content "Dave's HP: 50"
  end
  
  scenario 'show players hit points' do
    sign_in_and_play
    expect(page).to have_content "Mittens's HP: 50"
  end
  

  
end
