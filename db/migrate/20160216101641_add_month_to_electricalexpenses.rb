class AddMonthToElectricalexpenses < ActiveRecord::Migration
  def change
    add_column :electricalexpenses, :month, :string
  end
end
