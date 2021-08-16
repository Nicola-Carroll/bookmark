require 'bookmarks'

describe Bookmarks do

  let(:bookmark_array) { ['http://www.google.com/', 'http://www.makersacademy.com/'] }
  
  context '#all' do

   it 'returns all the bookmarks' do
    expect(subject.all).to include(bookmark_array[0])
    expect(subject.all).to include(bookmark_array[1])
   end

  end

end