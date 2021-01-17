module WinVar
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
end
