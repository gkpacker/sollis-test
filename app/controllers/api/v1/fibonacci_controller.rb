module Api::V1
 class FibonacciController < Api::V1::ApiController
    def fibonacci_sequence
      @sequence = FibonacciSequence.new(params[:quantidade])
      render json: @sequence.calculate_sequence
    end
  end
end
