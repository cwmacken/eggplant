class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :submitter
      t.integer :submitted
      t.boolean :winner
      t.string :title
      t.timestamps
    end
  end
end
