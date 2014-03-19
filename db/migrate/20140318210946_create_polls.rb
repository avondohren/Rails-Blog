class CreatePolls < ActiveRecord::Migration
  def change
    create_table :poll do |t|
      t.boolean :active
      t.string :question
      t.integer :user_id

      t.timestamps
    end
  end
end
