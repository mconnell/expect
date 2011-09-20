# Expect

I decided to learn how to use the Mirah programming language. I thought the best way to try
this would be to attempt writing a test framework in Mirah, for Mirah.

Thoughts on the test framework are heavily inspired by Rspec and Jasmine test frameworks.

Rough plan of Expect syntax:

    describe "matchers" do
      describe "to_equal" do
        it "checks equivilence on int/fixnum" do
          expect(123).to_equal(123)
          expect(123).not.to_equal(456)
        end
      end
    end

