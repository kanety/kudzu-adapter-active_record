class CreateKudzuPages < ActiveRecord::Migration[5.0]
  def change
    create_table :kudzu_pages do |t|
      t.text     :url
      t.text     :title
      t.integer  :status
      t.text     :mime_type
      t.integer  :size
      t.text     :charset
      t.text     :digest
      t.text     :response_header
      t.float    :response_time
      t.text     :redirect_from
      t.datetime :fetched_at
      t.datetime :revised_at
      t.timestamps null: false
    end
    add_index :kudzu_pages, :url, length: 32
    add_index :kudzu_pages, :digest, length: 6
  end
end
