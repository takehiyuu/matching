class CreateRecruitments < ActiveRecord::Migration[6.0]
  def change
    create_table :recruitments do |t|
      t.string :category, null: false
      t.string :work, null: false
      t.string :work_day, null: false
      t.string :work_time, null: false
      t.integer :prefecture_id, null: false
      t.string :city, null: false
      t.string :address, null: false
      t.string :building
      t.text   :pr
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
