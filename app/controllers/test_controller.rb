class TestController < ApplicationController

	require 'bcrypt'

	def test

		puts my_password = BCrypt::Password.create("my password")
		#=> "$2a$12$K0ByB.6YI2/OYrB4fQOYLe6Tv0datUVf6VZ/2Jzwm879BW5K1cHey"

		puts my_password.version              #=> "2a"
		puts my_password.cost                 #=> 12
		puts my_password == "my password"     #=> true
		puts my_password == "not my password" #=> false

		puts my_password = BCrypt::Password.new(my_password )
		puts my_password == "my password"     #=> true
		render plain: my_password == "not my password" #=> false

	end

	def users

		users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

        puts "users"
 
		def create_hash_digest(password)
		  BCrypt::Password.create(password)
		end
		 
		def verify_hash_digest(password)
		  BCrypt::Password.new(password)
		end
		 
		def create_secure_users(list_of_users)
			list_of_users.each do |user_record|
		    	user_record[:password] = create_hash_digest(user_record[:password])
			end
		  	puts list_of_users
		end

		create_secure_users(users)
	end

end
