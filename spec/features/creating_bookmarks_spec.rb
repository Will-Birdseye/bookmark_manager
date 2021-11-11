feature 'Adding a new bookmark' do
  scenario 'a user can add a new bookmark to Bookmark Manager' do
    visit('/bookmarks/add')
    fill_in('url', with: 'http://wwww.youtube.com')
    click_button('Submit')

    expect(page).to have_content 'http://wwww.youtube.com'
  end
end