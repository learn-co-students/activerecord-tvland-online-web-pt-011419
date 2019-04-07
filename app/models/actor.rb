require "pry"
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
   name = self.first_name.split
   name << self.last_name 
   name.join(" ")
  end
  
  def list_roles
   roles = self.characters.first.name
   show = self.shows.first.name
   #binding.pry
   r = roles.split
   r << show 
   r.join(" - ")
  end
end