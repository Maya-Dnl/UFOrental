class CreateFlyingSaucers < ActiveRecord::Migration[7.0]
  def change
    create_table :flying_saucers do |t|
      t.string :brand
      t.text :description
      t.integer :capacity
      t.string :planet
      t.float :price_by_day
      # t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
