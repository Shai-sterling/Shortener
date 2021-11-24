class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :original_url, null: false
      t.string :short_url
      t.integer :clicked, default: 0

      t.timestamps
    end
  end
end
