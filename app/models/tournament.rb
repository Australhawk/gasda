class Tournament < ActiveRecord::Base
  belongs_to :game
  has_many :tournament_teams
  has_many :teams, :through => :tournament_teams
  belongs_to :server
  belongs_to :ttype;
  
  validates_presence_of :name, :slots, :game, :ttype, :start, :server
  
end
