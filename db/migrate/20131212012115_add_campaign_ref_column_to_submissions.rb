class AddCampaignRefColumnToSubmissions < ActiveRecord::Migration
  def change
    add_reference :submissions, :campaign, index: true
  end
end
