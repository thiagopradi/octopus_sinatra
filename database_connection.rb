require "active_record"
require "octopus"

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => "master.sqlite3")

class User < ActiveRecord::Base
end

class OrmInfo 
  def self.build(shard)
    Octopus.using(shard.to_sym) do
      User.find_by_name("Octopus")
    end
  end
end