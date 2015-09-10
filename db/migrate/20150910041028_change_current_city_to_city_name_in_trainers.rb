class ChangeCurrentCityToCityNameInTrainers < ActiveRecord::Migration
  def change
  	rename_column :trainers, :current_city, :city_name
  end
end
