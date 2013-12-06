class User < ActiveRecord::Base
	validates :username, presence: true
	 validates :name, presence: true
end
