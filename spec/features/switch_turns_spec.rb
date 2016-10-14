
feature 'switch turns' do
	scenario 'will show player1 turn' do
		sign_in_and_play
		expect(page).to have_content('Toms turn')
	end	

    scenario 'will show player2 turn' do
      sign_in_and_play
      click_button 'Attack'
      click_link 'OK'
      expect(page).not_to have_content('Toms turn')
      expect(page).to have_content('Jerrys turn')
    end
end
