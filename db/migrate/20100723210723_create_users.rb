class CreateUsers < ActiveRecord::Migration
  using(:master, :europe, :asia, :america)
  
  def self.up
    create_table :users, :force => true do |t|
      t.string :name
      t.timestamps
    end
    
    User.create(:name => "User #{rand}")
  end

  def self.down
    drop_table :users
  end
end
