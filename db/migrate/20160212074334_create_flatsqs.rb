class CreateFlatsqs < ActiveRecord::Migration
  def change
    create_table :flatsqs do |t|
      t.string :flat_number
      t.string :flat_sq

      t.timestamps null: false
    end
  end
end
