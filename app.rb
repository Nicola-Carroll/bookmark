# in app.rb

require 'sinatra/base'
require 'sinatra/reloader'

require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @bookmarks = Bookmarks.instance
  end

  get '/' do
    @bookmarks = Bookmarks.create
    erb(:index)
  end

  get '/bookmarks' do
    erb(:bookmarks)
  end

  get '/bookmarks/add' do
    erb(:add_bookmark)
  end

  post '/bookmarks' do
    p params
    Bookmarks.add(url: params[:url], title: params[:title])
    erb(:bookmarks)
  end

  run! if app_file == $0
end
