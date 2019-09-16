require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @name = params[:name]
  "#{@name.reverse}"
end
get '/square/:number' do
  @squared = params[:number].to_i ** 2
  "#{@squared.to_s}"
end

get '/say/:number/:phrase' do
  phrase_rep = ''
  params[:number].to_i.times do
    phrase_rep += params[:phrase]
  end
  phrase_rep
end 

get '/say/:word1/:word2/:word3/:word4/:word5' do
"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operation/:number1/:number2' do
  
case params[:operation]
when 'add'
 sum = params[:number1].to_i + params[:number2].to_i
when 'subtract'
  sum = params[:number1].to_i - params[:number2].to_i
when 'multiply'
  sum = params[:number1].to_i * params[:number2].to_i
when 'divide'
  sum = params[:number1].to_i / params[:number2].to_i
end
 "#{sum}"
end

end