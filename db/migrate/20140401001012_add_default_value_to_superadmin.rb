class AddDefaultValueToSuperadmin < ActiveRecord::Migration
  def change
  	change_column :users, :superadmin, :boolean, :default => false
  end
end
