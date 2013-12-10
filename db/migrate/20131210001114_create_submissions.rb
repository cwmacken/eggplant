class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :submitter
      t.integer :submitted
      t.string :copy
      t.boolean :winner

      t.timestamps
    end
  end
end
