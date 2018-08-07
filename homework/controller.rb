require("sinatra")
require("sinatra/contrib/all") if development?
require("pry-byebug")

require_relative("models/game")
also_reload("./models/*")


get '/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @outcome = game.play()
  erb(:result)
  #could also do return Game.play(hand_1, hand_2) but make a self.play method?
end

get '/' do
  erb(:welcome)
end
