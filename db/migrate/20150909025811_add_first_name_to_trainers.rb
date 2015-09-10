class AddFirstNameToTrainers < ActiveRecord::Migration
  def change
  	add_column :trainers, :first_name, :string
  end
end
