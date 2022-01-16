feature 'Posting a message' do
  scenario 'A user adds a message' do
      visit('/')
      fill_in('message', with: 'Hello Chitter')
      fill_in('ch_user', with: 'Chitter')
      click_button('Submit')

      expect(page).to have_content "Hello Chitter"
  end
end