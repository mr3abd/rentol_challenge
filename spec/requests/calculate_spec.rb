require 'rails_helper'

RSpec.describe "Calculate", type: :request do
  describe "POST /calculate" do
    it "Sum two numbers " do
      post "/calculate", :params => {A: 100 , B: 50 , OPERATION: "SUM" }
      response_body = JSON.parse(response.body)
      expect(response_body['result']).to eq(150)
    end

    it "Sub Two Numbers" do
      post "/calculate", :params => {A: 100 , B: 50 , OPERATION: "SUB" }
      response_body = JSON.parse(response.body)
      expect(response_body['result']).to eq(50)
    end

    it "Times" do
      post "/calculate", :params => {A: 5 , B: 50 , OPERATION: "TIMES" }
      response_body = JSON.parse(response.body)
      expect(response_body['result']).to eq([50,50,50,50,50])
    end

    it "Divide" do
      post "/calculate", :params => {A: 100 , B: 50 , OPERATION: "DIVIDE" }
      response_body = JSON.parse(response.body)
      expect(response_body['result']).to eq(2)
    end
  end
end
