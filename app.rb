require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do

    @name = params[:name].reverse 

    "#{@name}"

  end

  get '/square/:number' do

    @num_square = params[:number].to_i * params[:number].to_i

    "#{@num_square}"
  end

  get '/say/:number/:phrase' do

    @num = params[:number].to_i
    @repeated_phrase = params[:phrase]
    
    "#{@repeated_phrase}" * @num
  
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  
  end

  get '/:operation/:number1/:number2' do

    operator = params[:operation]
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i

    if operator == "add"
      answer = num_1 + num_2
    end

    if operator == "subtract"
      answer = num_1 - num_2
    end
    
    if operator == "multiply"
      answer = num_1 * num_2
    end

    if operator == "divide"
      answer = num_1 / num_2
    end
    answer.to_s  
  end


end