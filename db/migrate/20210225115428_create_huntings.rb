class CreateHuntings < ActiveRecord::Migration[6.0]
  def change
    create_table :huntings do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :recruitment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
