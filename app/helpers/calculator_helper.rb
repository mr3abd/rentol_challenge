module CalculatorHelper
  # intilaize
  # Just call operation method
  # Validation numbers & OPERATIONS
  # call method per one
  #
  # API return error Check HOW
    def self.calculate(params)
      send(params[:OPERATION].downcase , params)
    end

    def self.sum(params)
      params[:A].to_i + params[:B].to_i
    end

    def self.times(params)
      Array.new(params[:A].to_i , params[:B].to_i)
    end

    def self.divide(params)
      params[:A].to_i / params[:B].to_i
    end

end
