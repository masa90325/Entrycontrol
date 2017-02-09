class CreateEntryControls < ActiveRecord::Migration[5.0]
  def change
    create_table :entry_controls do |t|
      t.integer :user_id
      t.boolean :entry

      t.timestamps
    end
  end
end
