require 'bookmarks'

describe Bookmarks do

  let(:bookmark_array) { ['http://www.google.com/', 'http://www.makersacademy.com/'] }
  
  context '#all' do

   it 'returns all the bookmarks' do
    Bookmarks.add('http://www.makersacademy.com/')
    Bookmarks.add('http://www.google.com/')

    expect(subject.all).to include(bookmark_array[0])
    expect(subject.all).to include(bookmark_array[1])
   end

 end

 it "adds a bookmark" do
  Bookmarks.add('www.website.com')
  expect(subject.all).to include('www.website.com')
 end


end