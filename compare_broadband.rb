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
  @location1 = Geocoder.search(@first)[0].data['geometry']['location']
  @location2 = Geocoder.search(@second)[0].data['geometry']['location']
  @wireline1 = BroadbandMap.wireline(:data_version => 'fall2010', :latitude => @location1['lat'].to_s, :longitude => @location1['lng'].to_s)
  @wireline2 = BroadbandMap.wireline(:data_version => 'fall2010', :latitude => @location2['lat'].to_s, :longitude => @location2['lng'].to_s)
  erb :compare
end
