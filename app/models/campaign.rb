class Campaign < ActiveRecord::Base
	validates_presence_of :price 
	validates_presence_of :description
	validates_presence_of :title
	validates_numericality_of :price, :on => :create

	belongs_to :user
	has_many :submissions
end
