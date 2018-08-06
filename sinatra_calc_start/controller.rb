require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")

require_relative("./models/calculator")
also_reload('./models/*')

get '/add/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_f(), params[:num2].to_f())
  @calculation = calculator.add()
  erb(:result)
end

get '/subtract/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_f(),
  params[:num2].to_f())
  @calculation = calculator.subtract()
  erb(:result)
end

get '/multiply/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_f(), params[:num2].to_f())
  @calculation = calculator.multiply()
  erb(:result)
end

get '/divide/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_f(), params[:num2].to_f())
  @calculation = calculator.divide()
  erb(:result)
end

get '/' do
  erb(:home)
end

get '/about_us' do
  erb(:about_us)
end
