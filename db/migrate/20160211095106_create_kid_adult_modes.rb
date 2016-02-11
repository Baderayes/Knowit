class CreateKidAdultModes < ActiveRecord::Migration


def up
    create_table :kid_adult_modes do |t|
    	t.string "mode_type"
    end
  end

def down
	drop_table :kid_adult_modes
end

end
