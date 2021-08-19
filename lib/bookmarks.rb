require 'pg'

class Bookmarks

  def initialize
    @bookmarks_db = connect_to_db
  end

  def all
    @bookmarks_db.map { |bookmark| bookmark["url"] }
  end

  private

  def connect_to_db
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    connection.exec('SELECT * FROM bookmarks')
  end
end