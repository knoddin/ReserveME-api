class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :dates
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
