class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_booking
      t.date :end_booking
      t.string :booking_status
      t.float :total_price
      # t.references :flying_saucer, null: false, foreign_key: true
      # t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
