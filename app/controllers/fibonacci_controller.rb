class FibonacciController < ApplicationController
  def fibonacci_sequence
    @sequence = FibonacciSequence.new(params[:quantidade]).calculate_sequence
    render json: @sequence
  end
end
