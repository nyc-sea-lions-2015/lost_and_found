class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :description
      t.references :user
      t.boolean :lost
      t.boolean :found

      t.timestamps null: false
    end
  end
end
