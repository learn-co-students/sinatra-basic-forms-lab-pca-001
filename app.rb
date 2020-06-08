require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post "/puppy" do
    @puppy = Puppy.new({
      name: params["name"],
      breed: params["breed"],
      age: params["age"],
      })
    #binding.pry
    erb :display_puppy
  end
end
