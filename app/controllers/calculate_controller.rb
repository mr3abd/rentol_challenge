class CalculateController < ApiController
  def create
    @result = CalculatorHelper.calculate(params)
    render json: {result: @result}
  end
end
