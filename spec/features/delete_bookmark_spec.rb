feature 'delete bookmark' do
  scenario 'user can delete a bookmark' do
    visit('/bookmarks/add')
    fill_in('url', with: 'http://www.youtube.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Submit')

		visit('/bookmarks/delete')
		fill_in('title', with: 'Test Bookmark')
		click_button('Submit')

		expect(page).not_to have_link('Test Bookmark', href: 'http://www.youtube.com')
	end
end