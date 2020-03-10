class AddUserClubLookupTable < ActiveRecord::Migration[6.0]
  def change 
    create_table :clubs_members do |t|
      t.integer :club_id, index: true
      t.integer :user_id, index: true

      t.timestamps 
    end
  end
end
