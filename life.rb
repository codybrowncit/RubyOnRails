require 'set'

class Life
    
  def initialize
    @board = {}
  end
  
  def is_alive(cell_key)
    @board[cell_key] == :alive
  end
  
  def become_alive(cell_key)
    @board[cell_key] = :alive
  end
  
  def run
    loop do
      print_board
      sleep 0.1
      tick
    end
  end
  
  private
  
  def print_board
    system("clear")
    30.times do |y|
      row = ''
      80.times do |x|
        if is_alive("#{x},#{y}")
          row += '#'
        else
          row += '.'
        end
      end
      puts row
    end
  end
  
  def tick
    new_board = {}
    candidate_cells.each do |cell_key|
      num_alive = number_of_alive_neighbors(cell_key)
      if is_alive(cell_key) && num_alive ==2 || num_alive == 3
        new_board[cell_key] = :alive
      
      end
    end
    @board = new_board
  end

  def candidate_cells
    cell_keys = Set.new
    @board.keys.each do |cell_key| 
      if is_alive(cell_key) 
        cell_keys.add(cell_key) 
        cell_keys.merge(neighbor_cells(cell_key)) 
      end
    end
    cell_keys
  end 
  
  def neighbor_cells(cell_key)
    x,y = cell_key.split(',')
    x = x.to_i
    y = y.to_i
    neighbor_keys = []
    neighbor_keys.push("#{x-1},#{y-1}")
    neighbor_keys.push("#{x},#{y-1}")
    neighbor_keys.push("#{x+1},#{y-1}")
    neighbor_keys.push("#{x-1},#{y}")
    neighbor_keys.push("#{x+1},#{y}")
    neighbor_keys.push("#{x-1},#{y+1}")
    neighbor_keys.push("#{x},#{y+1}")
    neighbor_keys.push("#{x+1},#{y+1}")
    neighbor_keys    
  end

  def number_of_alive_neighbors(cell_key)
    count =0
    neighbor_cells(cell_key).each do |neighbor_key|
      if is_alive(neighbor_key)
        count+=1
      end
    end
    count
  end

end

game = Life.new

game.become_alive("1,5")
game.become_alive("2,5")
game.become_alive("1,6")
game.become_alive("2,6")
game.become_alive("13,3")
game.become_alive("14,3")
game.become_alive("12,4")
game.become_alive("16,4")
game.become_alive("11,5")
game.become_alive("17,5")
game.become_alive("11,6")
game.become_alive("15,6")
game.become_alive("17,6")
game.become_alive("18,6")
game.become_alive("11,7")
game.become_alive("17,7")
game.become_alive("12,8")
game.become_alive("16,8")
game.become_alive("13,9")
game.become_alive("14,9")
game.become_alive("25,1")
game.become_alive("23,2")
game.become_alive("25,2")
game.become_alive("21,3")
game.become_alive("22,3")
game.become_alive("21,4")
game.become_alive("22,4")
game.become_alive("21,5")
game.become_alive("22,5")
game.become_alive("23,6")
game.become_alive("25,6")
game.become_alive("25,7")
game.become_alive("35,3")
game.become_alive("36,3")
game.become_alive("35,4")
game.become_alive("36,4")
game.become_alive("62,6")
game.become_alive("63,6")
game.become_alive("64,6")
game.become_alive("68,6")
game.become_alive("69,6")
game.become_alive("70,6")
game.become_alive("60,8")
game.become_alive("65,8")
game.become_alive("67,8")
game.become_alive("72,8")
game.become_alive("60,9")
game.become_alive("65,9")
game.become_alive("67,9")
game.become_alive("72,9")
game.become_alive("60,10")
game.become_alive("65,10")
game.become_alive("67,10")
game.become_alive("72,10")
game.become_alive("62,11")
game.become_alive("63,11")
game.become_alive("64,11")
game.become_alive("68,11")
game.become_alive("69,11")
game.become_alive("70,11")
game.become_alive("62,13")
game.become_alive("63,13")
game.become_alive("64,13")
game.become_alive("68,13")
game.become_alive("69,13")
game.become_alive("70,13")
game.become_alive("60,14")
game.become_alive("65,14")
game.become_alive("67,14")
game.become_alive("72,14")
game.become_alive("60,15")
game.become_alive("65,15")
game.become_alive("67,15")
game.become_alive("72,15")
game.become_alive("60,16")
game.become_alive("65,16")
game.become_alive("67,16")
game.become_alive("72,16")
game.become_alive("62,18")
game.become_alive("63,18")
game.become_alive("64,18")
game.become_alive("68,18")
game.become_alive("69,18")
game.become_alive("70,18")

game.run

