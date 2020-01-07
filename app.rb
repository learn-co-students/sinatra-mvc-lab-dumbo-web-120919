require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :user_input
  end

  post '/piglatinize' do #the piglatinizer instance will go somewhere in this method
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params["user_phrase"])
    erb :display_input
  end 
end
