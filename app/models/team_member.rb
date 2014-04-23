class TeamMember < ActiveRecord::Base
  belongs_to :account
  belongs_to :team
  belongs_to :role
  validates_presence_of :account, :team, :role
  validates_uniqueness_of :account
end
