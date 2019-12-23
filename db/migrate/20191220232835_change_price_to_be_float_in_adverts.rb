class ChangePriceToBeFloatInAdverts < ActiveRecord::Migration[5.2]
  def change
    change_column :adverts, :price, :float
  end
end
