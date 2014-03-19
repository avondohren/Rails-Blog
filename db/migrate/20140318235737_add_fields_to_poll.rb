class AddFieldsToPoll < ActiveRecord::Migration
  def change
    change_table :polls do |t|
      t.string :ans1
      t.string :ans2
      t.string :ans3
      t.string :ans4
      t.integer :count1
      t.integer :count2
      t.integer :count3
      t.integer :count4
    end
  end
end