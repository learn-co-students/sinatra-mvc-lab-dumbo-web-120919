require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        #binding.pry
        @pig_latiner = PigLatinizer.new
        @phrase = params[:user_phrase]
        erb :piglatinize
    end
end