module Api::V1
  class FibonacciController
    class FibonacciSequence

      def initialize(number)
        @number = number
      end

      def calculate_sequence
        sequence = []
        @number.to_i.times do
          sequence << 0 && next if sequence.empty?
          sequence << 1 && next if sequence.size == 1
          sequence << sequence.last(2).sum
        end
        sequence
      end
    end
  end
end
