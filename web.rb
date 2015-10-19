require 'sinatra'
require 'were_wolf'
require 'sinatra/jsonp'

get '/' do
  erb :index
end

get '/game' do
  content_type :json
  wolves_count = params['wolves'].to_i
  villagers_count = params['villagers'].to_i
  JSONP WereWolf.run(wolves_count, villagers_count)
end

get '/simulate' do
  content_type :json
  wolves_count = params['wolves'].to_i
  villagers_count = params['villagers'].to_i
  JSONP WereWolf.simulate(wolves_count, villagers_count)
end

get '/suggest' do
  content_type :json
  players_count = params['players'].to_i
  JSONP WereWolf.suggest(players_count)
end
