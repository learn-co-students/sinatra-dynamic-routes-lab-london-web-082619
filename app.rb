require_relative 'config/environment'

require'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @user_name = params[:name].reverse!
      "#{@user_name}"
       # binding.pry
  end

  get '/square/:number' do 
    @num = (params[:number].to_i)**(2)
     "#{@num}"
  end

  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @output = " "
    @num.times do 
    # binding.pry
    @output += @phrase
    end
    "#{@output}"
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
      @operation = params[:operation]
      @number1 = params[:number1]
      @number2 = params[:number2]
      
      if @operation == "add"
        @output = @number1.to_i + @number2.to_i
        "#{@output}"
      elsif @operation == "subtract"
        @output = @number1.to_i - @number2.to_i
        "#{@output}"
      elsif @operation == "multiply"
        @output = @number1.to_i * @number2.to_i
        "#{@output}"
      else @output = @number1.to_i / @number2.to_i
        "#{@output}"
      end
   end 

end