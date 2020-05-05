require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
    end

    get '/bookmarks' do
      # p ENV
      @bookmarks = Bookmark.all
      erb :'bookmarks'
    end

    post '/new_bookmark' do
      Bookmark.create(url: params[:url])
      redirect '/bookmarks'
    end

    get '/bookmarks/add' do
      erb :'add'
    end

  run! if app_file == $0
end
