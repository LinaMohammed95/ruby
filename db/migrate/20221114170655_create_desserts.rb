class CreateDesserts < ActiveRecord::Migration[7.0]
  def change
    create_table :desserts do |t|
      t.string :variety, null: false, index: true
      t.string :topping, null: false, index: true
      t.string :flavor, null: false, index: true

      t.timestamps
    end
  end
end
