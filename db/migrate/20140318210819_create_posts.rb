class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :category_id
      t.integer :user_id
      t.text :content
      t.integer :shares

      t.timestamps
    end
  end
end
