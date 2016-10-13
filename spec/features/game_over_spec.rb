feature "Game over" do
  scenario "shows a 'Lose' message when 0 points are reached for player 1." do
    sign_in_and_play
    8.times {attack_and_confirm}
    click_button "Attack"
    expect(page).to have_content "Mittens has lost the game."
  end
end