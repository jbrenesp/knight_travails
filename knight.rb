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
      puts "You made it in #{path.length-1} moves. Here's your path:"
      path.each { |square| p square }
      return path
    end

    x, y = current

    possible_moves.each do |dx, dy|
      new_x = x + dx
      new_y = y + dy
      #skip moves that go off the board
      next unless
      new_x.between?(0,7) && new_y.between?(0,7)
      #skip moves that have already been visited
      next if visited.include?([new_x, new_y])
      
      new_position = [new_x, new_y]
      visited << new_position
      new_path = path + [new_position]
      queue << [new_position, new_path]
    end
  end
end

knight_moves([3,3], [4,3])