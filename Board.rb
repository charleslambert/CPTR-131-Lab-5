class Board()
	def initialize
		@board = Array.new(9," ")
	end
	def lines
 		a = @board.each_slice(3).to_a
 		a += a.transpose
 		a += [@board.values_at(0,4,8),@board.values_at(2,4,6)]
		return a
	end
	def draw
		puts @board.each_slice(3).to_a.map{|r|r.join(" | ")}.join("\n- * - * -\n") + "\n"
	end
end