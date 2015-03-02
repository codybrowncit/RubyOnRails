class Recipe < ActiveRecord::Base
  belongs_to :baker
  mount_uploader :picture, PictureUploader
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :date_added, presence: true
 
end
