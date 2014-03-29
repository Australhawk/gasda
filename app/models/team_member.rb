class TeamMember < ActiveRecord::Base
  belongs_to :user
  belongs_to :team
  belongs_to :role
  validates_presence_of :user, :team, :role
end
