class Ttype < ActiveRecord::Base
  has_many :tournaments
  validates_presence_of :name, :description
end
