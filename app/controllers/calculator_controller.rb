require "#{Rails.root}/lib/calculator.rb"
class CalculatorController < ApplicationController
  def electrical
  	 @result = Calculator.send('divide',params[:a],'18740.00')
  	 @results = @result.round(2)
  end

  def security
  end
end
