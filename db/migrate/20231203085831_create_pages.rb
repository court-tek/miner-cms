class CreatePages < ActiveRecord::Migration[7.1]
  def change
    create_table :pages do |t|
      t.string :item_title
      t.string :item_description
      t.string :item_image

      t.timestamps
    end
  end
end
