class Review < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  belongs_to :trainer, :through => :users, source :user
end
