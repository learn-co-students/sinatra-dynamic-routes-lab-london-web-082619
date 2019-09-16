require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.map{|k,v| v}.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    
    operator = nil
    case params[:operation]
    when "add"
      operator = :+
    when "subtract"
      operator = :-
    when "divide"
      operator = :/
    when "multiply"
      operator = :*
    end

    [params[:number1].to_f, params[:number2].to_f].inject(operator).to_s

  end
end