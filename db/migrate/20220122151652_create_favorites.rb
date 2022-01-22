class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :imageUrl
      t.string :datePublished
      t.text :description
      t.string :storyUrl

      t.timestamps
    end
  end
end
