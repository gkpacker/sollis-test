class FibonacciController < ApplicationController
  def fibonacci_sequence
    @sequence = FibonacciSequence.new(params[:quantidade])
    render json: @sequence.calculate_sequence
  end
end