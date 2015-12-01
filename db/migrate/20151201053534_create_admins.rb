class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
    	t.string :admin
    	
    	t.timestamps null: false
    end
  end
end
