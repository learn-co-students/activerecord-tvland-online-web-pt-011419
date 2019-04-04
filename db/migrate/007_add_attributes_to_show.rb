class AddAttributesToShow < ActiveRecord::Migration[5.2]
 def change
   add_column :shows, :day, :datetime
   add_column :shows, :season, :string
 end 
 end