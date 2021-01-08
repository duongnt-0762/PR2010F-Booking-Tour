class CreateBookingTours < ActiveRecord::Migration[6.1]
  def change
    create_table :booking_tuors do |t|
      t.integer :user_id
      t.integer :tour_id

      t.timestamps
    end
  end
end
