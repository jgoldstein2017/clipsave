class Clip < ActiveRecord::Base
  has_many :viewers
  belongs_to :category
end
