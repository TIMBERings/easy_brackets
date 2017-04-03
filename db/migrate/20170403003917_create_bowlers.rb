class CreateBowlers < ActiveRecord::Migration
  def change
    create_table :bowlers do |t|
      t.integer :starting_lane

      t.timestamps
    end
  end
end
