require './lib/check_game_result'

describe CheckGameResult do
  describe '#win' do
    board = ['', '', '', '', '', '', '', '', '']
    let(:check_game_result) { CheckGameResult.new(board) }
    let(:expect_false) { expect(check_game_result.win).to eql(false) }
    it 'check the result of the win method. If it win case' do
      board = ['X', 'X', 'X', '', '', '', '', '', '']
      check_game_result
      expect(check_game_result.win).to eql(true)
    end

    it 'check the result of the win method. If not win case' do
      board = ['X', 'O', 'X', '', '', '', '', '', '']
      check_game_result
      expect_false
    end

    it 'check the result of the win method. If nothing in the board' do
      board = ['', '', '', '', '', '', '', '', '']
      check_game_result
      expect_false
    end

    it 'check the result of the win method. If playing number less than 3' do
      board = ['X', 'O', '', '', '', '', '', '', '']
      check_game_result
      expect_false
    end

    it 'check the result of the win method. If no player win' do
      board = %w[X O X O O X X X O]
      check_game_result
      expect_false
    end
  end
end
