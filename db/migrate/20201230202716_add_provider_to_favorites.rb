class AddProviderToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :provider, :string
  end
end
