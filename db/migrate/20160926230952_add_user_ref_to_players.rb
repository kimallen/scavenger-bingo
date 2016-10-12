class AddUserRefToPlayers < ActiveRecord::Migration
  def change
    add_reference :players, :user, foreign_key: true
  end
end
