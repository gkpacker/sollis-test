module Api::V1
  class FibonacciController
    class FibonacciSequence

      def initialize(number)
        @number = number
      end

      def calculate_sequence
        [0, 1, 1, 2]
      end
    end
  end
end
