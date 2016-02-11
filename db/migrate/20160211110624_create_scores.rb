class CreateScores < ActiveRecord::Migration
  def up
    create_table :scores do |t|
    	t.integer "game_id"
    	t.integer "user_id"
    	t.integer "score_number"
      t.timestamps
    end
    add_index :scores, ["game_id","user_id"]
  end
  def down
  	drop_table :scores
  end
end
