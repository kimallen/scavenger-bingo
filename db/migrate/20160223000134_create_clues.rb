class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
    	t.string :text, :keyword
    	t.integer :pt_value
    	t.references :game
      t.timestamps null: false
    end
  end
end
