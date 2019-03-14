class ChangePurchAmtToBeIntegerInOrders < ActiveRecord::Migration[5.2]
  def change
      change_column :orders, :purch_amt, :integer, using: 'purch_amt::integer'
  end
end
