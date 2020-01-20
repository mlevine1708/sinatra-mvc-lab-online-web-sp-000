require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Pig Latinizer!"
    erb :user_input
  end

  post '/piglatinize' do
    @text = params[:user_phrase]
    @piglatinizer = PigLatinizer.new
    erb :piglatinize
  end
end
end
