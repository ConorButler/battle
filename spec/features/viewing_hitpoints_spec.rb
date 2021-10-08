feature 'Seeing players hitpoints' do
  scenario "Player 1 can see Player 2's hit points" do
    sign_in_and_play

    #save_and_open_page

    expect(page).to have_content "Jill: 100HP"
  end
end