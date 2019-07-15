require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    square = @num**2
    square.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    num_phrase = @phrase * @num
    num_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    sentence = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      add = (@num1 + @num2).to_s
      return add
    elsif @operation == "subtract"
      subtract = (@num1 - @num2).to_s
      return subtract
    elsif @operation == "multiply"
      multiply = (@num1 * @num2).to_s
      return multiply
    else
      divide = (@num1 / @num2).to_s
    end
  end

end