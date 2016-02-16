class CreateElectricalexpenses < ActiveRecord::Migration
  def change
    create_table :electricalexpenses do |t|
      t.string :name
      t.string :description
      t.string :amount

      t.timestamps null: false
    end
  end
end
