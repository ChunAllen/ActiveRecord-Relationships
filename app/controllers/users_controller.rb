class UsersController < ApplicationController



	def index
		#with conditions joining two tables
		@showposts = User.find(:all, :joins => :posts,  :select => "posts.message, users.fname", :conditions => { :id => 1 })
		#SELECT posts.message, users.fname FROM posts INNER JOIN users ON users.id = posts.user_id  WHERE users.id = 1 

		
		#without condition joining 2 tables
		#@showposts = User.find(:all, :joins => :posts,  :select => "posts.message, users.fname")

		#@showposts = User.find(:all,  :select => "posts.message, users.fname",  :joins => (:posts), :joins => (:locations) )
		#@showposts = User.find(:all, :include => :post) 
	end
end
