class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :content
      t.text :about
      t.date :date
      t.boolean :allday

      t.timestamps
    end
  end
end
