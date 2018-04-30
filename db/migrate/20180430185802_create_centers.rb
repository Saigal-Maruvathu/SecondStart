class CreateCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :centers do |t|
      t.string :name
      t.string :location
      t.string :description , :limit => 500
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
