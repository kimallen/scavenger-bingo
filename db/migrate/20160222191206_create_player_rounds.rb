class CreatePlayerRounds < ActiveRecord::Migration
  def change
    create_table :player_rounds do |t|

      t.timestamps null: false
    end
  end
end
