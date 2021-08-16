require 'bookmarks'

describe Bookmarks do

  let(:bookmark_array) { ['www.google.com', 'www.yahoo.co.uk', 'www.bbc.co.uk'] }
  
  context '#all' do

   it 'returns all the bookmarks' do
    expect(subject.all).to eq(bookmark_array)
   end

  end

end