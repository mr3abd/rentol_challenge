class CalculateController < ApiController
  def create
    @result = Calculator.new(calculator_params).calculate
    render json: { result: @result }
  end

  private

  def calculator_params
    { first_number: params[:A].to_i, second_number: params[:B].to_i, operation: params[:OPERATION]&.downcase }
  end
end
