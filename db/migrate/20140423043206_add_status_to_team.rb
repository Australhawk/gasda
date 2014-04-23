class AddStatusToTeam < ActiveRecord::Migration
  def change
  	rename_column :teams, :verificated, :status
  end
end
