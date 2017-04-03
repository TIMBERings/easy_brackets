class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :bracket_group, index: true
      t.integer :starting_lane
      t.integer :entry_count
      t.boolean :paid
      t.integer :rejected_count
      t.boolean :refunded
      t.integer :average
      t.references :bowler, index: true

      t.timestamps
    end
  end
end
