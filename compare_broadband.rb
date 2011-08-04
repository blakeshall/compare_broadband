require 'rubygems'
require 'sinatra'
require 'broadband_map'
require 'json'
require 'geocoder'

get '/' do
  erb :index
end

