require 'spec_helper'

feature 'hit points' do
  scenario 'show players hit points' do
    sign_in_and_play
    expect(page).to have_content "Mittens HP: 50"
  end

end
