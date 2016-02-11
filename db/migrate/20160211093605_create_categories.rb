class CreateCategories < ActiveRecord::Migration
  def up
    create_table :categories do |t|
    	t.string "category_name"
    	t.string "category_description"
    end
  end

def down
	drop_table :categories
end
end
