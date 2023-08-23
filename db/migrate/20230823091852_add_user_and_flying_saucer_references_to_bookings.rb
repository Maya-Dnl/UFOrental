class AddUserAndFlyingSaucerReferencesToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :user, null: false, foreign_key: true
    add_reference :bookings, :flying_saucer, null: false, foreign_key: true
  end
end
