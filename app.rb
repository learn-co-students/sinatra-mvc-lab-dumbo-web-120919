require_relative 'config/environment'

class App < Sinatra::Base

get '/' do
    erb :user_input
end

post '/piglatinize' do
    piglatinizethis = PigLatinizer.new
    @piglatin = piglatinizethis.piglatinize(params[:user_phrase])
end

end