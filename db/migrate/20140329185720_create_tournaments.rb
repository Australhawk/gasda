class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :slots
      t.integer :game_id
      t.integer :ttype_id
      t.datetime :start

      t.timestamps
    end
  end
end
