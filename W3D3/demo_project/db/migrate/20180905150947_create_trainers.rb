class CreateTrainers < ActiveRecord::Migration[5.1]
  def change
    create_table :trainers do |t|
      t.string :name, null: false
      t.integer :pokemon_id, null: false
      t.timestamps
    end
  end
end
