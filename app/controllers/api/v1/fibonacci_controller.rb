module Api::V1
 class FibonacciController < Api::V1::ApiController
    def fibonacci_sequence
      sequence = FibonacciSequence.new(params[:quantidade]).calculate_sequence
      render json: { sequence: sequence }
    end
  end
end
