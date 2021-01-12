class CreateRates < ActiveRecord::Migration[6.1]
  def change
    create_table :rates do |t|
      t.integer :user_id
      t.integer :tour_id
      t.integer :quantity
      t.timestamps
    end
  end
end
