class AddCurrentCityToTrainers < ActiveRecord::Migration
  def change
  	add_column :trainers, :current_city, :string
  end
end
