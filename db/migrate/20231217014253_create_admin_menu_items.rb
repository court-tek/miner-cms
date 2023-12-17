class CreateAdminMenuItems < ActiveRecord::Migration[7.1]
  def change
    create_table :admin_menu_items do |t|
      t.string :title
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
