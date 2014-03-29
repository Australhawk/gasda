class Role < ActiveRecord::Base
  has_many :team_members
  validates_presence_of :name, :description
end
