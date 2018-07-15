require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    
    post '/teams' do
      @team_name = params[:team][:name]
      puts @team_name
      erb :team
    end
    
end
