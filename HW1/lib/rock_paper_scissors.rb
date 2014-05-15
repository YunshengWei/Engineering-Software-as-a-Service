class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end
  
  @@STRATEGIES = ["R", "P", "S"]
  
  def self.winner(player1, player2)
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" unless @@STRATEGIES.include?(player1[1]) && @@STRATEGIES.include?(player2[1])
    return player1 if player1[1] == player2[1]
    if player1[1] == "R" && player2[1] == "S" \
    || player1[1] == "S" && player2[1] == "P" \
    || player1[1] == "P" && player2[1] == "R"
      return player1
    else
      return player2
    end
  end

  def self.tournament_winner(tournament)
    return tournament if tournament[0].is_a?(String)
    return self.winner(self.tournament_winner(tournament[0]), 
                       self.tournament_winner(tournament[1]))
  end

end
