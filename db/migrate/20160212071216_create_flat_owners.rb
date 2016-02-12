class CreateFlatOwners < ActiveRecord::Migration
  def change
    create_table :flat_owners do |t|
      t.string :flat_number
      t.string :onwer_name
      t.integer :phone_no , :default => "", :null => true

      t.timestamps null: false
    end
  end
end
