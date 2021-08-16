require 'bookmarks'

describe Bookmarks do

  let(:bookmark_array) { ['http://www.google.com', 'http://www.makersacademy.com'] }
  
  context '#all' do

   it 'returns all the bookmarks' do
    expect(subject.all).to eq(bookmark_array)
   end

  end

end