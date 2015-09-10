class AddAvatarFileNameToTrainers < ActiveRecord::Migration
  def change
  	add_column :trainers, :avatar_file_name, :string
  end
end
