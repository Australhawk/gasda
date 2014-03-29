class CreateUserStatuses < ActiveRecord::Migration
  def change
    create_table :user_statuses do |t|
      t.integer :user_id
      t.text :status

      t.timestamps
    end
  end
end
