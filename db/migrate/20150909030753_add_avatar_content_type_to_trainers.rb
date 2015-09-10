class AddAvatarContentTypeToTrainers < ActiveRecord::Migration
  def change
  	  	add_column :trainers, :avatar_content_type, :string
  end
end
