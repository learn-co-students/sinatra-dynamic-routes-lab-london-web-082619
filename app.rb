require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name =  params[:name]
    name.reverse
  end

  get "/square/:number" do 
    # num = params[:number]
    # result = num.to_i * 2
    # result.to_s

    ((params[:number].to_i) ** 2).to_s
  end 

  get '/say/:number/:phrase' do 
    num = params[:number].to_i
    phra = params[:phrase]
    # num.times{phra} --> doesnt work
    phra * num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op = params[:operation]
    case op 
    when "add"
      answer = num1 + num2
    when "subtract"
      answer = num1 - num2 
    when "multiply"
      answer = num1 * num2 
    when "divide"
      answer = num1 / num2 
    end 
    answer.to_s
  end 
end