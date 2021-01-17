module MainMethods
  def game_numbers
    @all_numbers = (1..9).to_a
    @already_used = [0]
  end

  def player_input
    @player_number = gets.chomp.to_i
  end

  def win_methods
    player_input
    invalid
    avaliable_inputs
    board_interface
  end
end
