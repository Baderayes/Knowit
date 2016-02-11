class CreateAnswers < ActiveRecord::Migration
  def up
    create_table :answers do |t|
    	t.string "answer_1"
    	t.string "answer_2"
    	t.string "answer_3"
    	t.string "answer_4"
    	t.string "correct_answer"
    	t.string "difficulty_id"
    	t.string "question_id"
    end
  end

  def down
  	drop_table :answers
  end
end
