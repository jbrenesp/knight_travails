def knight_moves(start, target)
  #define all possible knight move offsets
  possible_moves = [
    [2,1], [2,-1], [-2,1], [-2,-1],
    [1,2], [1,-2], [-1,2], [-1,-2]
  ]
  #initialize a queue with the start position and its path
  queue = [[start, [start]]]
  #initialize a set to track visited positions
  visited = [start]
  
  #while the queue is not empty
  #take the next position and path from the queue
  while !queue.empty?
    current, path = queue.shift
    x, y = current

    

    #generate all valid knight moves from this position
    
    
    #mark new moves as visited
    #add new position and updated path to the queue
    #if this position is the target, return the path
    if current == target
      return path
    end

    possible_moves.each do |dx, dy|
      new_x = x + dx
      new_y = y + dy
      #skip moves that go off the board
      next unless
      new_x.between?(0,7) && new_y.between?(0,7)
      #skip moves that have already been visited
      next if visited.include?([new_x, new_y])
    end
    
    
  end
end