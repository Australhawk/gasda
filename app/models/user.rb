class User < ActiveRecord::Base
	validates_confirmation_of :email,:password
	validates_presence_of :username, :birthday, :email, :on => :create
	validates_uniqueness_of :username, :email, :case_sensitive => false
	validates_acceptance_of :terms
	validates :username, exclusion: {in: %w(admin gpvp gamerpvp guest temp www administrador manager staff)}, length: { minimum: 4 }, format: { with: /\A[a-zA-Z0-9]+\z/,
    message: "only allows letters" }
	
	has_secure_password
	has_many :user_statuses
  has_many :accounts
  has_many :team_members
  has_many :teams, :through => :accounts
	has_many :messages
	has_many :tournaments, :through => :teams
	has_many :games, :through => :accounts

	def avatar(size=80)
    gravatar_id = Digest::MD5::hexdigest(self.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
  end
  
end
