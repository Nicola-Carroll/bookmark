class Bookmarks
  DEFAULT_BOOKMARKS = ['www.google.com', 'www.yahoo.co.uk', 'www.bbc.co.uk']

  def initialize
    @bookmarks = DEFAULT_BOOKMARKS
  end

  def all
    @bookmarks
  end
end