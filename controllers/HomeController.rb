class HomeController < ApplicationController

  get '/jeeps' do
    @jeeps = Jeep.all
    @jeeps.to_json
  end

  get '/' do
    @jeeps = Jeep.all
    @jeeps.to_json
    erb :home
  end

  post '/' do
    puts params

    @jeep = Jeep.new
    @jeep.name = params[:name]
    @jeep.model = params[:model]
    @jeep.color = params[:color]
    @jeep.interior = params[:interior]
    @jeep.save

    redirect '/home'
  end

  patch '/home/:id' do
    @jeep = Jeep.find(params[:id])

    @jeep.name = params[:name]
    @jeep.model = params[:model]
    @jeep.color = params[:color]
    @jeep.interior = params[:interior]

    @jeep.save

    "success"
  end

  delete '/home/:id' do
    @jeep = Jeep.find(params[:id]).destroy

    "success"
  end
end
