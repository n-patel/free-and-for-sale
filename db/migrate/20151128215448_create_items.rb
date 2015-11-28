class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :summary
      t.float :price
      t.string :location

      t.timestamps null: false
    end
  end
end
