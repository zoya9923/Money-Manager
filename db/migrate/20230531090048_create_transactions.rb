class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :transactable_type
      t.string :transactable_id
      t.string :date
      t.string :user_id
      t.timestamps
    end
  end
end
