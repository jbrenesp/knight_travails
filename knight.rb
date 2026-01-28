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

    #if this position is the target, return the path

    #generate all valid knight moves from this position
    #skip moves that go off the board
    #skip moves that have already been visited
    #mark new moves as visited
    #add new position and updated path to the queue
    if current == target
      return path
    end

    possible_moves.each do |dx, dy|
      new_x = x + dx
      new_y = y + dy
    end
  end
end