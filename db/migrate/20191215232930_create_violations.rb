class CreateViolations < ActiveRecord::Migration[5.2]
  def change
    create_table :violations do |t|
      t.integer :user_id
      t.integer :advert_id
      t.string  :description
      t.timestamps
    end
  end
end
