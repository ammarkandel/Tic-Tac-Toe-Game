class CheckGameResult
  def initialize(got_board)
    @board = got_board
  end

  def win_case
    @win_cases = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 4, 8],
      [2, 4, 6],
      [2, 5, 8],
      [1, 4, 7],
      [0, 3, 6]
    ]
  end

  def win_var
    @count_win_x = 0
    @count_win_o = 0
    @every_move = 0
    @win_leng = @win_cases.length
  end

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
      p 'You Win'
      true
    else
      false
    end
  end
end
