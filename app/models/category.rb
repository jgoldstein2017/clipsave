class Category < ActiveRecord::Base
  has_many :clips
  belongs_to :theme
end
