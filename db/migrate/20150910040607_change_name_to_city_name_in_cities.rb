class ChangeNameToCityNameInCities < ActiveRecord::Migration
  def change
  	  	  	rename_column :cities, :name, :city_name
  end
end
