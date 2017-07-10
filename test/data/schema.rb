ActiveRecord::Migration.verbose = false

ActiveRecord::Schema.define do
  create_table :posts, :force => true do |t|
    t.boolean :published
  end

  create_table :post_translations, :force => true do |t|
    t.string :locale
    t.references :post
    t.string :title
    t.date_time :deleted_at
  end
end
