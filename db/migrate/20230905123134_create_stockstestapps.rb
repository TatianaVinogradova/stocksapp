class CreateStockstestapps < ActiveRecord::Migration[7.0]
  def change
    create_table :stockstestapps do |t|
      t.string :funds_name
      t.string :stockname
      t.date :date
      t.float :price

      t.timestamps
    end
  end
end
