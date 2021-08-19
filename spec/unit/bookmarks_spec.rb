require 'bookmarks'

describe Bookmarks do

  let(:bookmark_array) { ['http://www.google.com/', 'http://www.makersacademy.com/'] }
  
  context '#all' do

   it 'returns all the bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com/');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com/');")

    expect(subject.all).to include(bookmark_array[0])
    expect(subject.all).to include(bookmark_array[1])
   end

 end

 it "adds a bookmark" do
  subject.add('www.website.com')
  expect(subject.all).to include('www.website.com')
 end


end