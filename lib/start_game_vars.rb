module StartGameVar
  def game_numbers
    @all_numbers = (1..9).to_a
    @already_used = [0]
  end

  def avaliable_inputs
    @already_used << @player_number
    @avaliable = @all_numbers - @already_used
    p "These numbers are avaliable for next player #{@avaliable}"
  end
end
