require "rails_helper"
require 'json'

RSpec.describe "POST request to FibonacciController", type: :request do

  it "its valid when doing a request with 'quantidade' parameter" do
    post "/api/v1/fibonacci_sequence", params: { quantidade: 4 }

    expect(response.status).to eq(200)
  end

  it "it should calculate fibonacci sequence with 2 sequence numbers" do
    post "/api/v1/fibonacci_sequence", params: { quantidade: 2 }

    data = JSON.parse(response.body)

    expect(data['sequence']).to eq([0, 1])
  end

  it "it should calculate fibonacci sequence with 4 sequence numbers" do
    post "/api/v1/fibonacci_sequence", params: { quantidade: 4 }

    data = JSON.parse(response.body)
    expect(data['sequence']).to eq([0, 1, 1, 2])
  end

  it "it should calculate fibonacci sequence with 6 sequence numbers" do
    post "/api/v1/fibonacci_sequence", params: { quantidade: 6 }

    data = JSON.parse(response.body)
    expect(data['sequence']).to eq([0, 1, 1, 2, 3, 5])
  end
end
