require "rubygems"
gem 'activerecord', '2.3.8'
require "sinatra"
require_relative "./database_connection"
require 'haml'

get "/" do
  haml :welcome
end

get "/database/:shard" do
  haml :database
end