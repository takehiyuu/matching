class CreateMatings < ActiveRecord::Migration[6.0]
  def change
    create_table :matings do |t|
      t.references :hunting, null: false, foreign_key: true

      t.timestamps
    end
  end
end
