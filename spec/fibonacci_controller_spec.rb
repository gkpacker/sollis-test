require "rails_helper"

RSpec.describe "POST request to FibonacciController", :type => :request do

  it "do a request with right params" do
    params = {
      quantidade: 4
    }

    post "/fibonacci_sequence", params
  end

  it "do a request without params" do
    post "/fibonacci_sequence"
  end
end
