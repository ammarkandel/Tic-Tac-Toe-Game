require '../lib/check_game_result'

describe CheckGameResult do
  describe '#win' do
    board = ['', '', '', '', '', '', '', '', '']
    let(:check_game_result) { CheckGameResult.new(board) }
    it 'check the result if win case happen' do
      board = ['X', 'X', 'X', '', '', '', '', '', '']
      check_game_result
      expect(check_game_result.win).to eql(true)
    end

    it 'check the result if win case not happen' do
      board = ['X', 'O', 'X', '', '', '', '', '', '']
      check_game_result
      expect(check_game_result.win).to eql(false)
    end
  end
end
