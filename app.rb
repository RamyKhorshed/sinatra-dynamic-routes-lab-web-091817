require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @rev_name = params[:name].reverse
    "#{@rev_name}."
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}."
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    sentence = ""
    (0..number-1).each do |i|
      sentence +="#{phrase}"
    end
    sentence
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1, word2, word3, word4, word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    operation, num1, num2 = params[:operation], params[:number1].to_i, params[:number2].to_i
    sentence = ""
    if operation == 'add'
      sentence +="#{num1+num2}"
    elsif operation == 'subtract'
      sentence +="#{num1-num2}"
    elsif operation == 'multiply'
      sentence +=  "#{num1*num2}"
     elsif operation == 'divide'
      sentence += "#{num1/num2}"
    end
    sentence
  end

end
