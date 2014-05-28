class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :customer
      t.string :pet
      t.text :reason
      t.date :dated
      t.string :doctor

      t.timestamps
    end
  end
end
