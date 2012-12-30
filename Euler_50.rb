require 'Prime'

class Euler_50
  def find_cons_primes(limit)
    @limit, @primes, @max, @max_prime_fact = limit, Prime.each(limit).to_a, 0, 0

    loop do
      _prime_processing()
      _reduce_primes_by_the_first_elem
      break if @primes.length == 0 || @primes.length <= @max_prime_fact
    end

    return @max
  end

  private

  def _prime_processing
    sum_primes = []
    @primes.each do |x|
      sum_primes << x
      sum = sum_primes.inject(:+)
      break if sum > @limit
      if sum_primes.length > @max_prime_fact
        @max, @max_prime_fact = sum, sum_primes.length if Prime.prime?(sum)
      end
    end
  end

  def _reduce_primes_by_the_first_elem
    @primes = @primes[1..-1]
  end
end