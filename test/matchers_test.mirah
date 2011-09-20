class Expected
  def initialize(object:int)
    @expected = object
  end

  def to_equal(object:int)
    @expected == object
  end
end

def expect(expected:int)
  Expected.new(expected)
end




puts expect(456).to_equal(456)
puts expect(456).to_equal(123)
