require ('sinatra')
require ('sinatra/contrib/all') if development?
require_relative ('./models/rock_paper_scissors')

also_reload('./models/*')

get '/home' do
  erb :home
end

get '/game/:player_1/:player_2' do
  game = Game.new(params[:player_1], params[:player_2])
  @game_result = game.play
  erb :game
end

get '/play' do
  erb :play
end
