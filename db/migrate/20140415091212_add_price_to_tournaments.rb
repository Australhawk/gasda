class AddPriceToTournaments < ActiveRecord::Migration
  def change
  	add_column :tournaments, :price, :string
  end
end
