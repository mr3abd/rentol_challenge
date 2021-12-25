class Calculator
  def initialize(params)
    @first_number = params[:first_number]
    @second_number = params[:second_number]
    @operation = params[:operation]
  end

  def calculate
    send(@operation)
  end

  def sum
    @first_number + @second_number
  end

  def times
    Array.new(@first_number, @second_number)
  end

  def divide
    @first_number / @second_number
  end

  def sub
    @first_number - @second_number
  end
end
