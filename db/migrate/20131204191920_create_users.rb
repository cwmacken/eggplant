class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :type
      t.string :email
      t.string :company

      t.timestamps
    end
  end
end
