class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :owner_name
      t.date :owner_birthday

      t.timestamps
    end
  end
end
