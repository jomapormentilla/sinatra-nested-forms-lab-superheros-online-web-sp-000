require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @name = params[:team][:name]
        @motto = params[:team][:motto]
        
        @members = params[:team][:members]
        # binding.pry

        erb :team
    end
end
