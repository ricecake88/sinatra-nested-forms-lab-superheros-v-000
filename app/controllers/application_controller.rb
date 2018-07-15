require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    
    post '/teams' do
      binding.pry
      @team_name = params[:teams[name]]
      puts @team_name
      erb :team
    end
    
end
