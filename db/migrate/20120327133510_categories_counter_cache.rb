class CategoriesCounterCache < ActiveRecord::Migration
  def up
    add_column :categories, :contents_count, :integer, :default => 0
  end

  def down
  end
end
