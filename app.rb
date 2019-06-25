require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    @rev = name.reverse!
    "#{@rev}"
  end


  get '/square/:number' do
    num = params[:number].to_i
    @sq = num * num
    "#{@sq.to_s}"
  end


  get '/say/:number/:phrase' do
    num = params[:number].to_i
    @phrase = params[:phrase]
    @phrases = []
    num.times { |i| @phrases << "#{@phrase}" }
    "#{@phrases.join(" ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation].to_s
    arg1 = params[:number1].to_i
    arg2 = params[:number2].to_i
    @ans = ""

    if operation == "add"
      @ans += (arg1 + arg2).to_s
    elsif operation == "subtract"
      @ans += (arg1 - arg2).to_s
    elsif operation == "multiply"
      @ans += (arg1 * arg2).to_s
    elsif operation == "divide"
      @ans += (arg1 / arg2).to_s
    end

    "#{@ans}"

  end

end
