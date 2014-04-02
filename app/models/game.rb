class Game < ActiveRecord::Base
  has_many :accounts
  has_many :servers
  has_many :teams
  has_many :users, :through => :accounts
  has_many :messages
  validates_presence_of :name
  
end
