class Snippet < ActiveRecord::Base
	validates :body, :presence => true
	def self.search(search)
	  where("body LIKE ?", "%#{search}%") 
	end
end
