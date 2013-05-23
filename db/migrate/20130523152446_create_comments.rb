class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post
      # t.integer :post_id
      t.string :name
      t.text :body
      t.timestamps
    end
  end
end