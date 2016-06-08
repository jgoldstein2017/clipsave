class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :imbed
      t.boolean :private
      t.integer :rating
      t.string :source
      t.string :title
      t.text :notes
      t.string :address_id
      t.string :category_id

      t.timestamps

    end
  end
end
