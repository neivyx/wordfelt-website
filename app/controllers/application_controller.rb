require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do

    if logged_in?

      redirect "/users/#{current_user.id}"

    else

      erb :welcome
    end

  end

helpers do

  def logged_in?
      !!current_user
   end


end

end
