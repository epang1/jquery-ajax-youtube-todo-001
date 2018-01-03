require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get "/" do 
    erb :"index"
  end

  get "/widget" do
    YouTube.run(params[:search_keyword])
  end
end