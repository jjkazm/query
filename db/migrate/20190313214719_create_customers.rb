class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :cust_name
      t.string :city
      t.string :grade
      t.references :salesman, foreign_key: true

      t.timestamps
    end
  end
end
