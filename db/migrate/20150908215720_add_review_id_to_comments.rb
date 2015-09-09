class AddReviewIdToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :review_id, :string
  end
end
