class MoveDataAndRemoveColumn < ActiveRecord::Migration[5.2]
  def change
    execute 'INSERT INTO albums_players (album_id, player_id) SELECT id, player_id  FROM albums;'
    remove_column :albums, :player_id
  end
end
