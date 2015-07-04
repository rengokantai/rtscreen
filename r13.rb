#singleton object
#Example 1
class Live

end

class Dead

end

########Example 2
LIVE =Object.new
class << LIVE
  def to_s() 'o' end

  def next_gen (x,y,board)
    case board.neibours(x,y).count(LIVE)
      when 2..3 then self
      else Dead
      end
  end
end

DEAD =Object.new
class << DEAD
  def to_s() 'o' end

  def next_gen (x,y,board)
    case board.neibours(x,y).count(LIVE)
      when 3 then LIVE
      else self
    end
  end
end

[[DEAD,LIVE,DEAD,LIVE]]


#Example 3


class << (LIVE = Object.new)
  def to_s() 'o' end

  def next_gen (x,y,board)
    case board.neibours(x,y).count(LIVE)
      when 2..3 then self
      else Dead
    end
  end
end


class << (DEAD=Object.new)
  def to_s() 'o' end

  def next_gen (x,y,board)
    case board.neibours(x,y).count(LIVE)
      when 3 then LIVE
      else self
    end
  end
end

[[DEAD,LIVE,DEAD,LIVE]]

#Example 4

module LIVE
  def self.to_s() 'o' end

  def self.next_gen (x,y,board)
    case board.neibours(x,y).count(LIVE)
      when 2..3 then self
      else Dead
    end
  end
end


module DEAD
  def self.to_s() 'o' end

  def self.next_gen (x,y,board)
    case board.neibours(x,y).count(LIVE)
      when 3 then LIVE
      else self
    end
  end
end

[[DEAD,LIVE,DEAD,LIVE]]