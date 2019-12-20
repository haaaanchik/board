class AddImageToAdverts < ActiveRecord::Migration[5.2]
  def change
    add_column :adverts, :image, :string
  end
end
