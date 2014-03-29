class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :game_id
      t.integer :account_number
      t.string :username
      t.text :extra
      t.integer :user_id
      t.integer :server_id

      t.timestamps
    end
  end
end
