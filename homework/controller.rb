require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")

require_relative("models/game")
also_reload("./models/*")


get '/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @outcome = game.play()
  erb(:result)
end

get '/' do
  erb(:welcome)
end

# if hand1 == hand2
#   return "It's a draw!"
# elsif hand1 = "rock" && hand2 == "scissors"
#   return "Player 1 wins!"#true
# elsif hand1 == "paper" && hand2 == "rock"
#   return "Player 1 wins!"#true
# elsif hand1 == "scissors" && hand2 == "paper"
#   return "Player 1 wins!"#true
# else
#   return "Player 2 wins!"#false
# end
