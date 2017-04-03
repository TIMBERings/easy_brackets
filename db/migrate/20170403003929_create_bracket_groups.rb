class CreateBracketGroups < ActiveRecord::Migration
  def change
    create_table :bracket_groups do |t|
      t.string :name
      t.references :event, index: true

      t.timestamps
    end
  end
end
