class MaxFactorCalculator
  attr_reader :number
  attr_reader :max_factor

  def initialize(number)
    @number = number

    @collection_factors = []
  end

  def calculate
    get_collections_factors
    get_max_factor
  end

  private

  attr_reader :collection_factors

  def get_collections_factors
    index = 2

    while true
      if prime_number?(index)

        if number%index == 0
          @number = number/index
          collection_factors << index

          break if number == 1

          index = 1
        end
      end

      index += 1
    end
  end

  def get_max_factor
    @max_factor = collection_factors.max
  end

  def prime_number?(number)
    (2..(number-1)).all? {|x| number%x != 0}
  end
end

max_factor_calculator = MaxFactorCalculator.new(13195)
max_factor_calculator.calculate
puts max_factor_calculator.max_factor
