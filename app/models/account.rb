class Account < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
  belongs_to :server
  validates_presence_of :game, :username, :user, :server
  validates_associated :game, :user, :server 
  
end
