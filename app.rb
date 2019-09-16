require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i ** 2
    num.to_s
  end

  get '/say/:number/:phrase' do
    result = " "
    params[:number].to_i.times do
      result += params[:phrase]
    end
    result 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = params
    phrase = words.values.join(" ")
    phrase += "."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case operation
    when 'add'
      result = (num1 + num2).to_s
    when 'subtract'
      result = (num1 - num2).to_s
    when 'multiply'
      result = (num1 * num2).to_s
    when 'divide'
      result = (num1 / num2).to_s
    end
  end

end