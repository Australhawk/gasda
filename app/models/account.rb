class Account < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
  belongs_to :server
  has_one :team_member
  has_one :team, :through => :team_member
  validates_presence_of :game, :user, :username, :server
  validates_uniqueness_of :user, :scope => :game
  state_machine :status, :initial => :pending do
  	event :verify do
  		transition :pending => :verified
  	end
  end
  
end
