require "rails_helper"

RSpec.describe "POST request to FibonacciController", :type => :request do

  it "do a request with right params" do
    post "/fibonacci_sequence", params: { quantidade: 4 }

    response.code.should eq "200"
  end

  # it "do a request without params" do
  #   post "/fibonacci_sequence"

  #   response.code.should eq "200"
  # end
end
