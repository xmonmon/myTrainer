class User < ActiveRecord::Base
  has_many :reviews
  # has_many :reviews, foreign_key "trainer_id"
  belongs_to :city
  has_secure_password
  validates :email, uniqueness: true
  has_many :comments
  has_attached_file :avatar,
  					:styles => { :medium => "150x150>", :thumb => "44x44>"},
  					:default_url => "http://www.psdgraphics.com/file/male-silhouette.jpg"

  validates_attachment :avatar,
  					   :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"]},
  					   :size => { :in => 0..10.kilobytes }

  def s3_credentials
    { :bucket => ENV['S3_BUCKET'], :access_key_id => ENV['S3_PUBLIC_KEY'], :secret_access_key => ENV['S3_SECRET']}
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
end
