class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.text :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :school
      t.integer :years_practice

      t.timestamps
    end
  end
end
