
  class YubiKey < Sinatra::Base
    require './local_env'

    helpers LocalEnv

    get '/' do
      erb :index
    end

    post '/yubikey' do
      otp = params[:yubikey]

      rsp = Yubikey::OTP::Verify.new(   api_id: api_id,
                                        api_key: api_key,
                                        otp: otp )
       @key = rsp.status

      erb :index
    end
  end
