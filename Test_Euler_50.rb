require_relative 'Euler_50'
require 'test/unit'

class TestEuler50 < Test::Unit::TestCase
   
  TEST_CONS_PRIMES = { 100    => 41,
                       1000   => 953,
                       #10000  => 9521
                        }
  
  def test_find_cons_primes
    TEST_CONS_PRIMES.each{ |input,output| assert_equal(output,@euler50.find_cons_primes(input))}
  end
  
  def setup
    @euler50 = Euler_50.new
  end
end
