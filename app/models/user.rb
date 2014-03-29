class User < ActiveRecord::Base
	validates_confirmation_of :email,:password
	validates_presence_of :username, :birthday, :email, :on => :create
	validates_uniqueness_of :username, :email
	has_secure_password
	has_many :user_statuses
  has_many :accounts
  has_many :team_members
  has_many :teams, :through => :team_members
	has_many :messages
  
end
