class Message < ActiveRecord::Base
	belongs_to :user
	belongs_to :game
	validates_presence_of :user, :game, :message
end
