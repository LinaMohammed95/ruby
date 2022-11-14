class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :description, null: false, index: true
      t.string :fruits, null: false, index: true
      t.string :ingredient, null: false, index: true
      t.string :vegetables, null: false, index: true

      t.timestamps
    end
  end
end
