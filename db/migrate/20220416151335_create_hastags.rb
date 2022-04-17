class CreateHastags < ActiveRecord::Migration[7.0]
  def change
    create_table :hastags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :tagable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
