class CreateLyrics < ActiveRecord::Migration[6.0]
  def change
    create_table :lyrics do |t|
      t.string :text
      t.string :answer
      t.string :song
      t.integer :rapper_id

      t.timestamps
    end
  end
end
