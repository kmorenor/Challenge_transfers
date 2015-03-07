class CreateTransfers < ActiveRecord::Migration
  def change
    create_table :transfers do |t|
      t.references :sender, index: true
      t.references :receiver, index: true
      t.integer :amount

      t.timestamps
    end
  end
end
