class TournamentTeam < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :team
  validates_presence_of :team, :tournament
end
