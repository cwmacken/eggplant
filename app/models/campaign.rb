class Campaign < ActiveRecord::Base
	belongs_to :owner, class_name: "User", foreign_key: "owner"
	has_many :submissions
end
