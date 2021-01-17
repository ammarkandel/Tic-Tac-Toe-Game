require_relative './win_vars'
class CheckGameResult
  attr_reader :board

  def initialize(got_board)
    @board = got_board
  end
  include WinVar
  def loop_on_cases
    @win_cases[@every_move].each do |item|
      @count_win_x += 1 if @board[item] == 'X'
      @count_win_o += 1 if @board[item] == 'O'
    end
  end

  def win
    win_case
    win_var
    loop do
      loop_on_cases
      break unless check_which_win
      break if @every_move == @win_leng
    end
    check_winer
  end

  def check_which_win
    return unless @count_win_x < 3 && @count_win_o < 3

    @count_win_x = 0
    @count_win_o = 0
    @every_move += 1
    true
  end

  def check_winer
    if @count_win_x > @count_win_o || @count_win_x < @count_win_o
      p 'Congrate You Win'
      true
    else
      false
    end
  end
end
