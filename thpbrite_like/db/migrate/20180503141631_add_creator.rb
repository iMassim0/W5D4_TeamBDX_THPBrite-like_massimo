class AddCreator < ActiveRecord::Migration[5.2]
  def change
    change_table :events do |t|
      t.integer :creator_id
    end
  end
end
