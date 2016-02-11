class CreateDifficulties < ActiveRecord::Migration
  def up
    create_table :difficulties do |t|
    	t.string "difficulty_type"
    end
  end

def down
	drop_table :difficulties
end
end
