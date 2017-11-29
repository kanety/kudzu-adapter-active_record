class CreateKudzuLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :kudzu_links do |t|
      t.text    :uuid
      t.text    :url
      t.integer :state
      t.integer :depth
      t.timestamps null: false

      t.index :uuid, length: 4
      t.index :url, length: 32
      t.index :state
    end
  end
end
