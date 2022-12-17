class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :display_name
      t.date :dob
      t.string :email
      t.integer :daily_pages
      t.string :sex

      t.timestamps
    end
  end
end
