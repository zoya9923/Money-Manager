class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :category
      t.string :amount
      t.string :user_reference
      t.string :date
      t.timestamps
    end
  end
end
