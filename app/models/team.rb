class Team < ActiveRecord::Base
  has_many :team_members, dependent: :destroy
  has_many :accounts, :through => :team_members
  has_many :tournament_teams
  has_many :tournaments, :through => :tournament_teams
  has_many :tournament_matches_a, :class_name => 'TournamentMatch', :foreign_key => "a_team_id"
  has_many :tournament_matches_b, :class_name => 'TournamentMatch', :foreign_key => "b_team_id"
  belongs_to :game
  validates_presence_of :tag, :name, :game
  validates_uniqueness_of :tag, :scope => :game, :case_sensitive => false
  validates_associated :game, :accounts, :team_members
  accepts_nested_attributes_for :team_members, allow_destroy: true
  state_machine :status, :initial => :pending do
    event :verify do
      transition :pending => :verified
    end
  end
end
