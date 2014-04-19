class Server < ActiveRecord::Base
  has_many :accounts
  has_many :users, :through => :accounts
  has_many :tournaments
  belongs_to :game
  validates_presence_of :name, :tag, :game
  validates_associated :accounts, :users, :tournaments, :game
end
