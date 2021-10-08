feature 'Attacking a player' do
  scenario 'player 1 attacks player 2 and reduces HP by 20' do
    sign_in_and_play

    click_link 'ATTACK'

    save_and_open_page

    expect(page).not_to have_content "Jill: 100HP"
    expect(page).to have_content "Jill: 80HP"
  end
end