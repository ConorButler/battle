feature 'Attacking a player' do
  scenario 'player 1 attacks player 2 and reduces HP by 10' do
    sign_in_and_play

    click_link 'ATTACK'

    save_and_open_page

    expect(page).to have_content "Jill: 80HP"
  end
end