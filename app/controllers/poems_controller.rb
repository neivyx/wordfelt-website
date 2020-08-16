class PoemsController < ApplicationController

  # GET: /poems
  get "/poems" do
    erb :"/poems/index.html"
  end

  # GET: /poems/new
  get "/poems/new" do
    erb :"/poems/new.html"
  end

  # POST: /poems
  post "/poems" do
    redirect "/poems"
  end

  # GET: /poems/5
  get "/poems/:id" do
    erb :"/poems/show.html"
  end

  # GET: /poems/5/edit
  get "/poems/:id/edit" do
    erb :"/poems/edit.html"
  end

  # PATCH: /poems/5
  patch "/poems/:id" do
    redirect "/poems/:id"
  end

  # DELETE: /poems/5/delete
  delete "/poems/:id/delete" do
    redirect "/poems"
  end
end
