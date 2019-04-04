class UpdateColumnInShow < ActiveRecord::Migration[5.2]
 def change
   change_column :shows, :day, :string
 end 
 end