class Book < ActiveRecord::Base

  has_many :authors 
  
  ...

  has_attached_file :titlepage, :storage => :s3, 
                                :s3_credentials => 'config/s3.yml', 
                                :s3_permissions => 'public-read',
                                :bucket => S3_BUCKET, 
                                :path => "titlepages/:id_:basename_:style.:extension",
                                :styles => {:small => "360x360>", :thumb => "60x60>"}, 
                                :default_url => "/titlepages/default_titlepage_:style.png"

  ...
  
end


