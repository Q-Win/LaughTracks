require_relative '../models/comedian.rb'
require_relative '../models/special.rb'


class LaughTracksApp < Sinatra::Base

set :root, File.expand_path("..", __dir__)

  get '/' do
    erb :dashboard
  end

  get '/comedians' do
    @comedians = Comedian.all
    @specials = Special.all
    erb :index
  end

  get '/specials' do
    @specials = Special.all
    erb :specials
  end

  get '/comedians/:id' do
    @comedian = Comedian.find(params[:id])
    erb :show
  end

end
