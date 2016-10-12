require 'spec_helper'

feature 'attacking' do
  scenario 'Attack player 2 and get a confirmation' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Mittens was attacked."
  end
end  
