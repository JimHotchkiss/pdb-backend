class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :description
      t.string :urlToImage
      t.string :publishedAt
      t.string :url

      t.timestamps
    end
  end
end
