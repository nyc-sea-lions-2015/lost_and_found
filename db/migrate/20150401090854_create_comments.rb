class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text, null: false
      t.references :user, null: false
      t.references :item, null: false
      t.integer :parent_id

      t.timestamps null: false
    end
  end
end
