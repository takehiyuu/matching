class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|

      t.string  :name, null: false
      t.string  :occupaion, null: false
      t.integer :prefecture_id, null: false
      t.string  :phone_number, null: false
      t.string  :city, null: false
      t.string  :address, null: false
      t.string  :building
      t.references :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
