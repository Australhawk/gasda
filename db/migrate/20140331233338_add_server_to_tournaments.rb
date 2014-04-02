class AddServerToTournaments < ActiveRecord::Migration
  def change
  	add_column :tournaments, :server_id, :integer
  end
end
