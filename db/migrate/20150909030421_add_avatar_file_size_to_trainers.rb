class AddAvatarFileSizeToTrainers < ActiveRecord::Migration
  def change
  	add_column :trainers, :avatar_file_size, :integer
  end
end
