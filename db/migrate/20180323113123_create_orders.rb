class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :details
      t.datetime :date
      t.decimal :total
      t.string :status
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
