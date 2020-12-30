class AddDatePublishedToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :date_published, :string
  end
end
