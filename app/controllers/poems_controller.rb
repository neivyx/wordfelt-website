class PoemsController < ApplicationController

  get '/' do
    @poems = Poem.all
    erb :'poems/index'
  end

  get "/poems/new" do
    
    erb :"/poems/new"
  end

  post "/poems" do
    redirect_if_not_logged_in
    
        if params[:title] != "" && params[:poem] != "" &&
      
            @poem = Poem.create(params)

            redirect "/poems/#{@poem.id}"
        else
            redirect '/poems/new'
        end

  end

end



