class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.integer :user_id
      t.integer :team_id
      t.integer :role_id
      t.string :info

      t.timestamps
    end
  end
end
