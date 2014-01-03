
  class YubiKey < Sinatra::Base
    require './local_env'

    helpers LocalEnv

    get '/' do
      erb :index
    end

    post '/yubikey' do
      opt = Rubikey::OTP.new(params[:yubikey])
      authentication = opt.authenticate(api_id: api_id, api_key: api_key)
      
      @status = authentication.status

      erb :index
    end
  end
