class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.string :flag
      t.integer :size
      t.string :language
      t.integer :population

      t.timestamps null: false
    end
  end
end
