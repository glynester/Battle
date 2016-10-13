feature 'attacking' do

  scenario "attack player 2 reduces player HP by 10" do
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_content "Mittens's HP: 40"
  end

  scenario 'show player 1\'s hitpoints.' do
    sign_in_and_play
    attack_and_confirm
    expect(page).to have_content "Mittens's HP: 40"
  end

  scenario 'show player 2\'s hitpoints.' do
    sign_in_and_play
    2.times { attack_and_confirm }
    expect(page).to have_content "Dave's HP: 40"
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'Mittens attacked Dave'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    2.times { attack_and_confirm }
    expect(page).not_to have_content "Dave's HP: 50"
    expect(page).to have_content "Dave's HP: 40"
  end

end
