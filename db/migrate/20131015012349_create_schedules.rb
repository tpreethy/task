class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :name
      t.date :dated
      t.text :reason

      t.timestamps
    end
  end
end
