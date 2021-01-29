class CreateRequests < ActiveRecord::Migration[6.1]
  def change
      create_table :requests do |t|
      t.date    :day_start
      t.date    :day_end
      t.integer :stayed
      t.integer :user_id
      t.integer :tour_id
      t.integer :gues
      t.integer :payment
      t.boolean :status
      t.timestamps
      end
  end
end
