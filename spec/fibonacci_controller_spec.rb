require "rails_helper"

RSpec.describe "POST request to FibonacciController", type: :request do

  it "its valid when doing a request with 'quantidade' parameter" do
    post "/fibonacci_sequence", params: { quantidade: 4 }

    expect(response.status).to eq(200)
  end

  # it "do a request without params" do
  #   post "/fibonacci_sequence"

  #   response.code.should eq "200"
  # end
end
