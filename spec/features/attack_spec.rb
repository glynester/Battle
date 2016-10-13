feature 'attacking' do

  scenario "attack player 2 reduces player HP by 10" do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).to have_content "Mittens's HP: 40"
  end

  scenario 'show player 1\'s hitpoints.' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).to have_content "Mittens's HP: 40"
  end

  scenario 'show player 2\'s hitpoints.' do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    click_button "Attack"
    click_button "OK"
    expect(page).to have_content "Dave's HP: 40"
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Mittens attacked Dave'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).not_to have_content "Dave's HP: 50"
    expect(page).to have_content "Dave's HP: 40"
  end

end
