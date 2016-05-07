class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :user_id
      t.text :orders, array: true, default: []
      t.timestamps null: false
    end
  end
end
