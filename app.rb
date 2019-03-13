require 'sinatra/base'

class App < Sinatra::Base
    get '/newteam' do
       # @new_team = params[:new_team]#having this line of code gave 3 errors for quite a long time.
        erb :newteam
    end

    get '/team' do 
        erb :team
    end
    post '/team' do 
        @name = params[:name]
        @coach = params[:coach]
        @pg = params[:pg]
        @sg = params[:sg]
        @pf = params[:pf]
        @sf = params[:sf]
        @c = params[:c]
       erb :team
    end
end
