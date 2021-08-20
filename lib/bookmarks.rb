require 'pg'

class Bookmarks

  def self.create
    @bookmarks = Bookmarks.new
  end

  def self.instance
    @bookmarks
  end

  def self.add(url:, title:)
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}' );")
  end

  def initialize
    @bookmarks_db_connection = connect_to_db
  end

  def all
    data = @bookmarks_db_connection.exec('SELECT * FROM bookmarks')
    data.map { |bookmark| {url: bookmark["url"], title: bookmark["title"] } }
  end


  private

  def connect_to_db
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
  end
end