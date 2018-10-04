require_relative '../models/comedian.rb'

class LaughTracksApp < Sinatra::Base

set :root, File.expand_path("..", __dir__)

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    @comedians = Comedian.all
    erb :index
  end

end
