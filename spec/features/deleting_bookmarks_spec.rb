feature 'Deleting a bookmark' do
	scenario 'A user can delete a bookmark from Bookmark Manager' do
		Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
		visit('/bookmarks')
		expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')

		first('.bookmark').click_button 'Delete'

		expect(page).not_to have_link('Makers Academy', href: 'http://www.makersacademy.com') 
	end
end