class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :tour_id
      t.integer :stayed
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
