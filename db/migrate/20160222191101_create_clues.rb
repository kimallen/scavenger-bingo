class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|

      t.timestamps null: false
    end
  end
end
