class AddImageToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :image, :string
  end
end
