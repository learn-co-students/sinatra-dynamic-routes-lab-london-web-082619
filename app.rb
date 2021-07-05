require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do

  @name = params[:name].reverse

  end

  get '/square/:number' do 
    @number = params[:number].to_i * params[:number].to_i
    @number.to_s
  end

  get '/say/:number/:phrase' do 

    @new_phrase= params[:phrase] * params[:number].to_i
    @new_phrase.to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end

  get '/:operation/:number1/:number2' do 

    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operations = params[:operation]

    if @operations == "add"

     @addition = @num1 + @num2
     @addition.to_s


  elsif @operations == "subtract"

    @subtract = @num1 - @num2
    @subtract.to_s
  
  elsif @operations == "multiply"

    @multiply = @num1 * @num2
    @multiply.to_s

  else @operations == "divide"

    @divide = @num1 / @num2
    @divide.to_s

  end
end



end