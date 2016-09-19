class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
    	t.string :name, :phone
      t.timestamps null: false
    end
  end
end
