class CreatePostimages < ActiveRecord::Migration
  def change
    create_table :postimages do |t|
      t.string :image
      t.references :post

      t.timestamps
    end
    add_index :postimages, :post_id
  end
end
