class CreateAdminMenuCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :admin_menu_categories do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
