def lines(board)
  a = board.each_slice(3).to_a
  a += a.transpose
  a += [board.values_at(0,4,8),board.values_at(2,4,6)]
  return a
end

players = ["x","o"]
board = Array.new(9," ")
until not board.include?(" ") or (lines(board).find{|line| line[0] != " " and line.uniq.length == 1})
  puts board.each_slice(3).to_a.map{|r|r.join(" | ")}.join("\n- * - * -\n") + "\n"
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