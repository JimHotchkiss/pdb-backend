class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :title
      t.integer :user_id
      t.string :date_published
      t.string :description
      t.string :image
      t.string :provider
      t.string :url

      t.timestamps
    end
  end
end
