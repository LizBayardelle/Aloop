class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string   "image_file_name"
      t.string   "image_content_type"
      t.integer  "image_file_size"
      t.datetime "image_updated_at"
      t.datetime "created_at",                         null: false
      t.datetime "updated_at",                         null: false
      t.boolean  "approved",           default: false
      t.text     "comments"
      t.string   "kit"
      t.timestamps null: false
    end
  end
end
