require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatinized_text = PigLatinizer.new
    @pl = @piglatinized_text.piglatinize(params[:user_phrase])

    erb :display_result
  end

end