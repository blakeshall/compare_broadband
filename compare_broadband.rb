require 'rubygems'
require 'sinatra'
require 'broadband_map'
require 'json'
require 'geocoder'

get '/' do
  erb :index
end

get '/compare' do
  @first = params['first']
  @second = params['second']
  erb :compare
end
