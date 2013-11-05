class Menu < ActiveRecord::Base
	validates_presence_of :title
	validates :title, length: { minimum: 2 }
	attr_accessible :title
end