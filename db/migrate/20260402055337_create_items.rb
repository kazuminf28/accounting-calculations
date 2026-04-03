class CreateItems < ActiveRecord::Migration[8.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.boolean :shared

      t.timestamps
    end
  end
end
