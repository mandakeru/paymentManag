class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :title
      t.text :description
      t.decimal :value
      t.references :user, index: true, foreign_key: true
      t.integer :status
      t.integer :times_to_pay

      t.timestamps null: false
    end
  end
end
