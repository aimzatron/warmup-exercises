class Simulator

  def instructions(move)
    instructions_array = [[:turn_right],"R", [:advance],"A", [:turn_left],"L"] 
    clean_move = move.split("")
    move_array = []
    clean_move.each do |letter|
      move_array << instructions_array[letter]
    end
    move_array
  end

end
