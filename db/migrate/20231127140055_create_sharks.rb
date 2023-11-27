class CreateSharks < ActiveRecord::Migration[7.1]
  def change
    create_table :sharks do |t|
      t.string :name
      t.text :description
      t.float :price_per_day
      t.references :owner, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
