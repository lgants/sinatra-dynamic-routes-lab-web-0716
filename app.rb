require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "Your name reversed is: #{@name.reverse}."
  end

  get '/square/:num' do
    @num = params[:num]
    "Your number squared 1: #{@num.to_i * @num.to_i}."
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @n = "\n"
    @phrase_with_n = "#{@phrase + @n}"
    "#{@phrase_with_n * @number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @s = " "
    "#{@word1 + @s + @word2 + @s + @word3 + @s + @word4 + @s + @word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    erb :operation
  end

end
