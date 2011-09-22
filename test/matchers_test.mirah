class Expected
  def initialize(object:int)
    @expected = object
    @not_assertion = false
  end

  def not
    @not_assertion = true
    self
  end

  def to_equal(object:int)
    assertion = @expected == object
    result = @not_assertion ? !assertion : assertion
    result
  end
end

def expect(expected:int)
  Expected.new(expected)
end


puts expect(123).to_equal(123)
puts expect(123).not.to_equal(456)
