class Categorization < ActiveRecord::Base
  set_table_name "categories_contents"
  belongs_to :category
  belongs_to :content
end
