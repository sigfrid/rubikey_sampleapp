
  class YubiKey < Sinatra::Base
      
    get '/' do
      erb :index
    end

  end
