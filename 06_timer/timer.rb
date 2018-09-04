class Timer
  #write your code here
  attr_reader :hour, :minutes, :seconds
  def initialize()
    @hour = 0
    @minutes = 0
    @seconds = 0
  end
  
  def seconds=(s)
    @hour = Integer(s / 3600)
    s = s % 3600
    @minutes = Integer(s / 60)
    @seconds = s % 60
  end

  def time_string
    return padded(@hour) + ":" + padded(@minutes) + ":" + padded(@seconds)
  end

  def padded(n)
    if n < 10
      return "0" + n.to_s
    end
    return n.to_s
  end
end
