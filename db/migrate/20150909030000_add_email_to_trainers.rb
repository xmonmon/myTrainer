class AddEmailToTrainers < ActiveRecord::Migration
  def change
  	add_column :trainers, :email, :string
  end
end
