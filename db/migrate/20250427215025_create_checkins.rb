class CreateCheckins < ActiveRecord::Migration[8.0]
  def change
    create_table :checkins do |t|
      t.references :user, null: false, foreign_key: true
      t.references :habit, null: false, foreign_key: true
      t.boolean :checked_in
      t.date :date

      t.timestamps
    end
  end
end
