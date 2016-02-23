class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
    	t.string :url_ext
    	t.references :game
      t.timestamps null: false
    end
  end
end
