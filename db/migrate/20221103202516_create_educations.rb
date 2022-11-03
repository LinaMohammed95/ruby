class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.integer :user_id
      t.string :university
      t.string :stage

      t.timestamps
    end
  end
end
