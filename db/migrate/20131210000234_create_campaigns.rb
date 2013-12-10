class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :owner
      t.integer :start
      t.integer :ending
      t.string :description

      t.timestamps
    end
  end
end
