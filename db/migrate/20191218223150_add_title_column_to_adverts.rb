class AddTitleColumnToAdverts < ActiveRecord::Migration[5.2]
  def change
    add_column :adverts, :title, :string
  end
end
