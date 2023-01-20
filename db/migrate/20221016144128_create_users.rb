

class CreateUsers < ActiveRecord::Migration[7.0]
  def up
    create_table :users do |t|

      add_column :users, :address, :string
      #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
      
      # # Example: t.column "first_name", :string
      # t.column "first_name", :string,:limit => 25  #By default SQL String limit 255 character 
      # t.string "last_name",:limit => 25           #By default SQL String limit 255 character 
      # t.string "email",:default=>'',:null => false  #Ex:- :null => false 
      # t.timestamps
    end
  end
  def down 
    drop_table :users
  end
end
