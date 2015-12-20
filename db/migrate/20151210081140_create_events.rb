class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :date
      t.string :location
      t.integer :players_amount
      t.text :additional_info, default: nil
      t.integer :price , default: 0

      t.timestamps null: false
    end
  end
end
