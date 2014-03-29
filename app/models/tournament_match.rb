class TournamentMatch < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :a_team, :class_name => 'Team', :foreign_key => 'a_team_id'
  belongs_to :b_team, :class_name => 'Team', :foreign_key => 'b_team_id'
  state_machine :state, :initial => :pending
  validates_presence_of :tournament, :a_team, :b_team
  rails_admin do
    configure :state, :state
  end
end
