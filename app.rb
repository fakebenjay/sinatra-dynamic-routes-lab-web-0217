require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    (@number ** 2).to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @number.times.collect do
      "#{@phrase}\n"
    end
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]

    if @operation == add || @operation == addition
      (@number1 + @number2).to_s
    elsif @operation == subtract || @operation == subtraction || @operation == minus
      (@number1 - @number2).to_s
    elsif @operation == multiply || @operation == multiplication || @operation == times
      (@number1 * @number2).to_s
    elsif @operation == divide || @operation == division || @operation == divide_by
      (@number1 / @number2).to_s
    end
  end

end
