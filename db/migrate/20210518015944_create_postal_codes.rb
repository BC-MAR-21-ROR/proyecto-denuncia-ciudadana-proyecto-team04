class CreatePostalCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :postal_codes do |t|
      t.string :code
      t.references :settlement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
