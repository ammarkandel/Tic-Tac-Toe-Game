module CheckInvalid
  def invalid
    if @already_used.include?(@player_number) || !(1..9).cover?(@player_number)
      p "Number #{@player_number} is an invalid move."
    else
      @already_used.uniq.each_index do |index|
        @board[@player_number - 1] = index.odd? ? 'O' : 'X'
      end
    end
  end
end
