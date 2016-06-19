class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :cell_phone
      t.string :alt_phone
      t.string :email
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.date :dob
      t.date :registration_on
      t.integer :reference_id

      t.timestamps null: false
    end
  end
end
