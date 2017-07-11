class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
