class AddCategoryToAnimes < ActiveRecord::Migration[6.1]
  def change
    add_column :animes, :category, :string
  end
end
