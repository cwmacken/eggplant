class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :user_id
      t.string :campaign_id
      t.float :charge
    end
  end
end
