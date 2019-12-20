class AddPriceColumnToAdverts < ActiveRecord::Migration[5.2]
  def change
    add_column :adverts, :price, :integer
  end
end
