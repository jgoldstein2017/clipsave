class Theme < ActiveRecord::Base
  validates :title, :presence => true

  has_many(:categories, :class_name => "Category", :foreign_key => "theme_id")
end
