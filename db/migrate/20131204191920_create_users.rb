class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :image
      t.string :type
      t.string :email
      t.string :company
      t.string :userbin_id

      t.timestamps
    end
  end
end
