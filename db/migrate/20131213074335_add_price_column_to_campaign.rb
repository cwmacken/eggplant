class AddPriceColumnToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :price, :integer
  end
end
