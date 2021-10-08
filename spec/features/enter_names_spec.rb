feature 'Entering 2 names' do
  scenario 'submitting 2 names' do
    sign_in_and_play

    #save_and_open_page

    expect(page).to have_content 'Jack vs. Jill'
  end
end