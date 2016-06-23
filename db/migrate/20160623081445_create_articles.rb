class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :city
      t.text :content
      t.attachment :cover_image
      t.string :video
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
