class CreateRappers < ActiveRecord::Migration[6.0]
  def change
    create_table :rappers do |t|
      t.string :name
      t.string :bio
      t.string :hometown
      t.integer :lives
      t.boolean :isboss
      t.string :badge
      t.string :gif


      t.timestamps
    end
  end
end
