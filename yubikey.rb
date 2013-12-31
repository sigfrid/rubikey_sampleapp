
  class YubiKey < Sinatra::Base
    get '/' do
      erb :index
    end

    post '/yubikey' do
      @key = params[:yubikey]
      erb :index
    end
  end
