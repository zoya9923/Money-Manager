class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :categorizable_type
      t.string :categorizable_id
      t.string :description
      t.string :user_id
      t.timestamps
    end
  end
end
