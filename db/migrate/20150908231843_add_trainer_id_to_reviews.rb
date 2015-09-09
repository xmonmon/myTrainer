class AddTrainerIdToReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :trainer_id, :integer
  end
end
