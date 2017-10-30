class MaxFactor
  attr_reader :input, :collection_factors, :max_factor

  def initialize(input)
    @input = input
    @collection_factors = []
  end

  def result
    get_collections_factors(input)
    max_factor
  end

  private

  def get_collections_factors(input_number)
    index = 2

    while true
      if prime_number?(index)

        if input_number%index == 0
          input_number = input_number/index
          collection_factors << index

          break if input_number == 1

          index = 1
        end
      end

      index += 1
    end

    @max_factor = collection_factors.max
  end

  def prime_number?(number)
    (2..(number-1)).all? {|x| number%x != 0}
  end
end

max = MaxFactor.new(13195)
puts max.result
