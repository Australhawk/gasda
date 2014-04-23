class ChangeUserForAccountAtTeammember < ActiveRecord::Migration
  def change
  	rename_column :team_members, :user_id, :account_id
  end
end
