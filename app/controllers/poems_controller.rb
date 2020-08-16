class PoemsController < ApplicationController

  get '/' do
    @poems = Poem.all
    erb :'todos/index'
  end

  post '/' do 
    @poem = Poem.create(params)
    redirect '/'
  end


end



