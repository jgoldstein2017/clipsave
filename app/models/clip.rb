class Clip < ActiveRecord::Base
  has_many :viewers
  belongs_to :category

  validates :title, :presence => true, :uniqueness => true
  validates :imbed, :presence => true
end
