class FibonacciController
  class FibonacciSequence
    after_initialize :calculate_sequence

    def initialize(number)
      @number = number
    end

    def calculate_sequence
      puts @number
    end
  end
end
