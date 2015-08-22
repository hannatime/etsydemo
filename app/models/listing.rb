class Listing < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"

  has_attached_file :image,
  :styles => { :thumbnail => "100x100>" },
  :storage => :s3,
  :s3_credentials => "#{Rails.root}/config/aws.yml",
  :bucket => "etsy-demo99";
  
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
