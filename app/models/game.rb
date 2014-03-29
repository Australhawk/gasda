class Game < ActiveRecord::Base
  has_many :accounts
  has_many :servers
  has_many :teams
  has_many :users, :through => :accounts
  validates_presence_of :name
  
end
