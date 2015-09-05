class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :username
      t.string :title
      t.string :body


      t.timestamps null: false
    end
  end
end
