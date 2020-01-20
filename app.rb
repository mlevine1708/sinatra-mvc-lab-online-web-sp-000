require_relative 'config/environment'

class App < Sinatra::Base

  GET '/' do
    erb :user_input
  end

  POST '/piglatinize' do
    pl = PigLatinizer.new
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :results
  end
end
