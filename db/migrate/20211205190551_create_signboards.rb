class CreateSignboards < ActiveRecord::Migration[6.1]
  def change
    create_table :signboards do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.text :address
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
