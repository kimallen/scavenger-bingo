class CreatePlayersRounds < ActiveRecord::Migration
  def change
    create_table :players_rounds do |t|
    	t.references :player, :round
      t.timestamps null: false
    end
  end
end
