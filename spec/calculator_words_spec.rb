require('rspec')
require('calculator_in_words')

describe('calculator') do 
  it('should add the numbers with words') do
    calculator("What is 3 plus 5?").should(eq(8))
  end

  it('should use the operator requested and execute the problem') do 
    calculator("What is 3 times 5").should(eq(15))
  end
end
