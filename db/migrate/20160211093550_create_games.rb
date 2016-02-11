class CreateGames < ActiveRecord::Migration
  def up
    create_table :games do |t|
t.timestamp
    	t.string "players_number"
    	t.string "mode"
      t.string "Difficulty"
    	t.string "category_type"
    	t.integer "time_for_each_question"
      t.string "status", defualt: "started"
      t.timestamps
    end
  end

	def down
	drop_table :games
end

end
