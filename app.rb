# coding:utf-8
require 'sinatra'

attendances = []

get '/' do
  @attendances = attendances
  haml :index
  # haml :index, :locals => { :attendances => attendances }
end

post '/' do
  attendances << {
    :name => params["name"],
    :time => Time.now
  }

  @attendances = attendances
  haml :index
end
