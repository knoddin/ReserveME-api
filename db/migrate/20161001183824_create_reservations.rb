class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :user, index: true, foreign_key: true
      t.references :week, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
