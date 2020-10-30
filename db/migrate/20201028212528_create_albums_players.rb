class CreateAlbumsPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_players do |t|
      t.belongs_to :album
      t.belongs_to :player
    end
  end
end
