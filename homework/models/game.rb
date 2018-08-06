class Game

  def initialize(hand_1, hand_2)
    @hand_1 = hand_1
    @hand_2 = hand_2
  end

  def play()

    hands = [@hand_1, @hand_2]

    if @hand_1 == @hand_2
      return "It's a draw!"
    elsif hands.include?("rock") && hands.include?("paper")
      return "Paper wins!"
    elsif hands.include?("rock") && hands.include?("scissors")
      return "Rock wins!"
    elsif hands.include?("paper") && hands.include?("scissors")
      return "Scissors wins!"
    end
  end

end
