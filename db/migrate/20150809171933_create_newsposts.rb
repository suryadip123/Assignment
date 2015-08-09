class CreateNewsposts < ActiveRecord::Migration
  def change
    create_table :newsposts do |t|
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :newsposts, [:user_id, :created_at]
  end
end
