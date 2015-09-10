class ChangeCommentsToCommentIdInReviews < ActiveRecord::Migration
  def change
  	  	  rename_column :reviews, :comments, :comment_id
  end
end
