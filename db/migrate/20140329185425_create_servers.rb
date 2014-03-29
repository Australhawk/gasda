class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :tag
      t.integer :game_id

      t.timestamps
    end
  end
end
