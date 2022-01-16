require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/flash'
require './lib/message.rb'
require './database_connection_setup'

class ChitterApp < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    configure :test, :development do
      register Sinatra::Flash
      enable :sessions
    end
    enable :sessions, :method_override

    get '/' do
      @messages = Message.all
      erb :index
    end  

    post '/create' do
      flash[:notice] = 'Your post or username (or both) have no content!' unless Message.create(message: params['message'], ch_user: params['ch_user'])
      redirect '/'
    end    
run! if app_file == $0
end