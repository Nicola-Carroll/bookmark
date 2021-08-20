require 'bookmarks'

describe Bookmarks do

  let(:bookmark_array) { [ 
    { url: 'http://www.google.com/', title: 'Google' },
    { url: 'http://www.makersacademy.com/', title: 'Makers Academy' }
    ] }
  
  context '#all' do

   it 'returns all the bookmarks' do
    Bookmarks.add(url: 'http://www.makersacademy.com/', title: 'Makers Academy')
    Bookmarks.add(url: 'http://www.google.com/', title: 'Google')

    expect(subject.all).to include(bookmark_array[0])
    expect(subject.all).to include(bookmark_array[1])
   end

 end

 it "adds a bookmark" do
  Bookmarks.add(url: 'www.website.com', title: 'Website')
  expect(subject.all).to include( { url: 'www.website.com', title: 'Website' } )
 end


end