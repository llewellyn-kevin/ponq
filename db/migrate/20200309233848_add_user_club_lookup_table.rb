class AddUserClubLookupTable < ActiveRecord::Migration[6.0]
  def change 
    create_join_table :clubs, :users, table_name: "club_users"
  end
end
