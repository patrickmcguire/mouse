class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :x
      t.integer :y
      t.integer :sequence
      t.integer :session_id, :limit => 8

      t.timestamps
    end
  end
end
