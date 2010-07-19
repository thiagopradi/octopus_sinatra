require "active_record"
require "octopus"

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => "master.sqlite3")

class User < ActiveRecord::Base
end