class AddAvatarUpdatedAtToTrainers < ActiveRecord::Migration
  def change
  	  	add_column :trainers, :avatar_updated_at, :integer
  end
end
