class Content < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, :through => :categorizations

  after_save :increment_category_counter
  #after_destroy :decrement_category_counter

  def increment_category_counter
    categories.each do |c|
      c.update_attribute(:contents_count, c.contents.size)
      c.save
    end
  end
end
