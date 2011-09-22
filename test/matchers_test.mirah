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

class ExpectTest
  def expect(expected:int)
    Expected.new(expected)
  end
end

class MatchersTest < ExpectTest
  def test_int_equivalence
    puts expect(123).to_equal(123)
    puts expect(123).not.to_equal(456)
  end
end

test_class = MatchersTest.new
test_class.test_int_equivalence

