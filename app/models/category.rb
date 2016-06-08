class Category < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_many :clips
  # belongs_to :theme
  belongs_to :theme
end
