class CreateCasts < ActiveRecord::Migration[5.2]
  def change
    create_table :casts do |t|
      t.date :lunch_date
      t.string :place
      t.references :actor, foreign_key: true

      t.timestamps
    end
  end
end
