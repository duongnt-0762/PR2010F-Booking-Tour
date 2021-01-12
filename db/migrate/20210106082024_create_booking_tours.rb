class CreateBookingTours < ActiveRecord::Migration[6.1]
  def change
    create_table :booking_tours do |t|

      t.integer :tour_id

      t.timestamps
    end
  end
end
