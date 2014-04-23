class AddVerificatedStatusToTeam < ActiveRecord::Migration
  def change
  	add_column :teams, :verificated, :string
  end
end
