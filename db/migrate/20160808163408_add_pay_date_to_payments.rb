class AddPayDateToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :pay_date, :date
  end
end
