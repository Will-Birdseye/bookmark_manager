require 'bookmark'

describe Bookmark do
  it 'should include all bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    
    bookmarks = Bookmark.all
    expect(bookmarks).to include("http://www.makersacademy.com")
    expect(bookmarks).to include("http://www.google.com")
    expect(bookmarks).to include("http://www.destroyallsoftware.com")
  end

  it 'creates a new bookmark' do
    Bookmark.create(url: 'http://www.youtube.com')
    expect(Bookmark.all).to include 'http://www.youtube.com'
  end
end