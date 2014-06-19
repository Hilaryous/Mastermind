class Generator
  attr_reader :length, :pool, :code
  def initialize(length=4,pool=%w{b g r y})
    @length = length
    @pool = pool
    @code = []
    create
  end

  def create
    @code = (0...length).collect{pool.sample}
  end
end

sequence = Generator.new(4)
