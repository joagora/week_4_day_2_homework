class Game
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def play
    if @player_1 == @player_2
      return "It's a tie!"
    elsif @player_1 == "rock" && @player_2 == "scissors"
      return "Player one wins"
    elsif @player_1 == "scissors" && @player_2 == "rock"
      return "Player two wins"
    elsif @player_1 == "paper" && @player_2 == "scissors"
      return "Player two wins"
    elsif @player_1 == "scissors" && @player_2 == "paper"
      return "Player one wins"
    elsif @player_1 == "paper" && @player_2 == "rock"
      return "Player one wins"
    elsif @player_1 == "rock" && @player_2 == "paper"
      return "Player two wins"
    end
  end
end
