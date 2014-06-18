class Turn
  attr_reader :feedback
  def initialize
    @turn = 0
    @positions = matcher.checker_index
    @elements = matcher.checker
    @times = Array.new
  end

  def count
    @turn += 1
  end

  def time
    t = Time.new
    @times << t
    @times
  end

  def evaluate_feedback
    if matcher.full_match == true
      @turn
      time_delta = (@times[-1]) - (@times[0])
    elsif matcher.full_match == false
      @turn
      @positions
      @elements
    end
  end
end
