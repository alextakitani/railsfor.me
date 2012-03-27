class ContentsCategories < ActiveRecord::Migration
  def up
    create_table 'categories_contents', :id => false do |t|
      t.column :category_id, :integer
      t.column :content_id, :integer
    end
  end

  def down
  end
end
