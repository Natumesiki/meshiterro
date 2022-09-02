class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|

    # t.integer :id
     t.string :shop_name
     t.text :caption
    # add_reference :post_imeages, :user_id, null: false, foreign_key: true
    t.integer :user_id


      t.timestamps
    end
  end
end
