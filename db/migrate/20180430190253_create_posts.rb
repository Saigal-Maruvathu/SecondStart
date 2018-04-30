class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content, :limit => 500
      t.references :center, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
