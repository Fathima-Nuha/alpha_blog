class User < ApplicationRecord
	has_many :artiicles
	validates :username, uniqueness: { case_sensitive: true },presence: true,length: { minimum: 3 }
	validates :email, uniqueness: true,presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: "Invalid email format" }
end