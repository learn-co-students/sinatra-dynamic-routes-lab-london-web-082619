require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    # binding.pry
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation].downcase
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation
      when "add"
        value = @num1 + @num2
      when "subtract"
        value = @num1 - @num2
      when "multiply"
        value = @num1 * @num2
      when "divide"
        value = @num1 / @num2
    end
    "#{value}"
  end


end