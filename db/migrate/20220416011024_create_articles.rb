class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.boolean :published, default: false
      t.references :user, null: false, foreign_key: true
      t.references :serie, optional: true, foreign_key: true

      t.timestamps
    end
  end
end
