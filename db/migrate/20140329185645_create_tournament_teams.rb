class CreateTournamentTeams < ActiveRecord::Migration
  def change
    create_table :tournament_teams do |t|
      t.integer :team_id
      t.integer :tournament_id

      t.timestamps
    end
  end
end
