class AddEmailtoUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :email, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    add_index :users, :email
    #Ex:- add_index("admin_users", "username")
  end
end
