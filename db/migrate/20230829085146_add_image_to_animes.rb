class AddImageToAnimes < ActiveRecord::Migration[6.1]
  def change
    add_column :animes, :image, :string
  end
end
