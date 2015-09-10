class AddPasswordToTrainers < ActiveRecord::Migration
  def change
  	add_column :trainers, :password, :string
  end
end
