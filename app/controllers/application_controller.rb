require 'pry'
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        # binding.pry
        @name = params[:team][:name]
        @motto = params[:team][:motto]
        
        @teams = params[:team][:members]

        erb :team
    end
end
