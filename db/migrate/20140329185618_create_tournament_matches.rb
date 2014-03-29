class CreateTournamentMatches < ActiveRecord::Migration
  def change
    create_table :tournament_matches do |t|
      t.integer :tournament_id
      t.integer :a_team_id
      t.integer :b_team_id
      t.string :state

      t.timestamps
    end
  end
end
