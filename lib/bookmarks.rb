require_relative 'database_connection'

class Bookmarks

  def self.create
    @bookmarks = Bookmarks.new
  end

  def self.instance
    @bookmarks
  end

  def self.add(url:, title:)
    DatabaseConnection.query("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}');")
  end

  def all
    data = DatabaseConnection.query('SELECT * FROM bookmarks')
    data.map { |bookmark| {url: bookmark["url"], title: bookmark["title"] } }
  end

end