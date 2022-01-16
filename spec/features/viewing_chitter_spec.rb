feature 'Viewing messages' do
  scenario 'A user can see messages' do
    Message.create(message: 'Hello Chitters First!', ch_user: 'Hello Chitt First!')
    Message.create(message: 'Hello Chitters Second!', ch_user: 'Hello Chitt Second!')
    Message.create(message: 'Hello Chitters Last!', ch_user: 'Hello Chitt Last!')

    visit '/'
    
    expect(page).to have_content "Hello Chitters First!"
    expect(page).to have_content "Hello Chitters Second!"
    expect(page).to have_content "Hello Chitters Last!"
  end
end