class Server < ActiveRecord::Base
  has_many :accounts
  has_many :users, :through => :accounts
  belongs_to :game
  validates_presence_of :name, :tag, :game
end