# Expect

I decided to learn how to use the Mirah programming language. I thought the best way to try
this would be to attempt writing a test framework in Mirah, for Mirah.

Currently, this project is mostly a learning process. Don't expect the source to be the prettiest, or functional right now..

Current implementation is drifting towards a style that looks like:

    class MatchersTest < ExpectTest
      def test_int_equivalence
        expect(123).to_equal(123)
        expect(123).not.to_equal(456)
      end
    end

Orignally I planned the code to look more like:

    describe "matchers" do
      describe "to_equal" do
        it "checks equivilence on int/fixnum" do
          expect(123).to_equal(123)
          expect(123).not.to_equal(456)
        end
      end
    end

The block stuff was making me feel a bit perplexed so aiming to implement something basic that works in a class/method style and reconsider moving to a block style structure once I have a better understanding.


## Initial Goals
- basic assertions for common types (primatives and objects)
- create a test runner
- jar / nice way of packaging for use in a demo android project.

