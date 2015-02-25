class Baker < ActiveRecord::Base
  has_many :recipes
  validates :name, presence: true
  validates :zip_code, length: { minimum: 5 }
  validates :zip_code, numericality: { only_integer: true }
end
