feature 'Switching turns' do
  scenario "shows player1 as first turn" do
    sign_in_and_play

    expect(page).to have_content "Jack's turn"
  end
end