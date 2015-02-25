class Picture < ActiveRecord::Base
	belongs_to :user
	belongs_to :tradition
		
	validates :url, presence: true
	#mount_uploader :url, PictureUploader
end
