class CreatePlayerRounds < ActiveRecord::Migration
  def change
    create_table :player_rounds do |t|
    	t.references :player, :round
      t.timestamps null: false
    end
  end
end
