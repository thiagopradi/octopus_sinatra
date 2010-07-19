require "rubygems"
require "sinatra"
require "database_connection"

get "/" do

end

get "/database/:shard" do
  Octopus.using(params[:shard].to_sym) do
    
  end
end