require_relative './start_game_vars'
module StartGame
  def win_methods
    player_input
    invalid
    avaliable_inputs
    p board_interface
  end

  include StartGameVar

  def start_game
    game_numbers
    until winer
      win_methods
      break if winer

      if @avaliable.empty?
        p 'draw'
        break
      end
    end
  end
end
