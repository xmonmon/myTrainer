class AddZipcodeToCities < ActiveRecord::Migration
  def change
  	add_column :cities, :zip_code, :integer
  end
end
