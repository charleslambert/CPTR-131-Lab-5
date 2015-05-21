#Charles Lambert and Jared Curry

module TicTacToe
	class Domo
		attr_accessor :sign

		def initialize(sign)
     		@sign = sign
    	end

      #Chooses first possible move.
    	def desicion(board)
    		for i in 0..8
    			if board.valid_move?(i)
    				return i
    			end
    		end
    	end

    	def get_move(board)
     		puts board.to_s
     		move = desicion(board)
      		return move
    	end

    	def to_s
    		@sign
    	end
    end
end