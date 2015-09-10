class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :trainer
  has_many :comments
  # belongs_to :trainer, :through => :users, source :users
end
