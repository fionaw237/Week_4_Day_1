class Game

  def initialize(hand_1, hand_2)
    @hand_1 = hand_1
    @hand_2 = hand_2
  end

  def play()

    @hands = [@hand_1, @hand_2]

    # for MVP
# additionally, could use index of array below for extension - to find
# winning player

    # if @hand_1 == @hand_2
    #   return "It's a draw!"
    # elsif hands.include?("rock") && hands.include?("paper")
    #   return "Paper wins!"
    # elsif hands.include?("rock") && hands.include?("scissors")
    #   return "Rock wins!"
    # elsif hands.include?("paper") && hands.include?("scissors")
    #   return "Scissors wins!"
    # end

    #further extension
    if @hand_1 == @hand_2
      return "It's a draw!"
    elsif player_1_wins?()
      return "Player 1 wins by playing #{@hand_1}!"
    else
      return "Player 2 wins by playing #{@hand_2}!"#false
    end

  end

  def player_1_wins?()
    if (@hands == ["rock", "scissors"]) || (@hands == ["paper", "rock"]) || (@hands == ["scissors", "paper"])
      return true
    else
      return false
    end
  end

end

# suggested solution
# winners = {
#   "rock" => "scissors",
#   "scissors" => "paper",
#   "paper" => "rock"
# }
#
# if hand_1 == hand_2
#   return "Draw!"
# elsif winners[hand_1] == hand_2
#   "player 1 wins"
# elsif winners[hand_2] == hand_1
#   "player 2 wins"
# end
