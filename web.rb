require 'sinatra'
require 'were_wolf'
require 'json'

get '/' do
  erb :index
end

get '/game' do
  content_type :json
  wolves_count = params['wolves'].to_i
  villagers_count = params['villagers'].to_i
  result = WereWolf.run(wolves_count, villagers_count).to_json
end

get '/simulate' do
  content_type :json
  wolves_count = params['wolves'].to_i
  villagers_count = params['villagers'].to_i
  result = WereWolf.simulate(wolves_count, villagers_count).to_json
end

get '/suggest' do
  content_type :json
  players_count = params['players'].to_i
  result = WereWolf.suggest(players_count).to_json
end
