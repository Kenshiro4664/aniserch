class AddPlatformToAnimes < ActiveRecord::Migration[6.1]
  def change
    add_column :animes, :platform, :string
  end
end
