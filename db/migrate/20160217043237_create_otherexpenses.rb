class CreateOtherexpenses < ActiveRecord::Migration
  def change
    create_table :otherexpenses do |t|
      t.string :name
      t.string :description
      t.string :month
      t.string :amount

      t.timestamps null: false
    end
  end
end
