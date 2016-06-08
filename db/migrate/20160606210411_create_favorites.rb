class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :viewer_id

      t.timestamps

    end
  end
end
