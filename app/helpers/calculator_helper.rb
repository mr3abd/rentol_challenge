module CalculatorHelper
  # DONE REFACTOR IT TO lib/calculator.rb
  # as logic should to mv on lib not helper

  class << self
    def calculate(params)
      send(params[:operation] , params)
    end

    def sum(params)
      params[:first_number] + params[:second_number]
    end

    def times(params)
      Array.new(params[:first_number] , params[:second_number])
    end

    def divide(params)
      params[:first_number] / params[:second_number]
    end
  end

end
