players = ["x","o"]
until not board.include?(" ") or (lines(board).find{|line| line[0] != " " and line.uniq.length == 1})
  Board.draw
  print "Enter a valid move for #{players[0]}:  "
  move = gets.to_i
  while(board[move] != " ")
    print "#{move} is not valid. Enter a valid move for #{players[0]}:  "
    move = gets.to_i
  end
  board[move]=players[0]
  players.rotate!
end
w = lines(board).find{|l| l[0] != " " and l.uniq.length == 1}
w = w ? w[0] : false
if w
  puts "Game over, player #{w} wins!"
else
  puts "It's a cat's game."
end