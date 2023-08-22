class RenameColumnInDescriptionFlyingSaucers < ActiveRecord::Migration[7.0]
  def change
    rename_column :flying_saucers, :despcription, :description
  end
end
