class Theme < ActiveRecord::Base
  has_many(:categories, :class_name => "Category", :foreign_key => "theme_id")
end
