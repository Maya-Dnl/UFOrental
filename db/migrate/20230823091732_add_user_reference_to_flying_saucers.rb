class AddUserReferenceToFlyingSaucers < ActiveRecord::Migration[7.0]
  def change
    add_reference :flying_saucers, :user, null: false, foreign_key: true
  end
end
