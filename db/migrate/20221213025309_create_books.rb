class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :author_last
      t.string :author_first
      t.string :title
      t.integer :pages
      t.datetime :finish_date

      t.timestamps
    end
  end
end
