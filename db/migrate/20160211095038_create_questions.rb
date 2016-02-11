class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
    	t.string "question_content"
    	t.string "question_description"
    	t.integer "category_id"
    	t.integer "kid_adult_mode_id"
    end
  end

def down
	drop_table :questions
end
end
