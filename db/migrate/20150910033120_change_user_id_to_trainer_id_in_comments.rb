class ChangeUserIdToTrainerIdInComments < ActiveRecord::Migration
  def change
  	  	rename_column :comments, :user_id, :trainer_id
  end
end
