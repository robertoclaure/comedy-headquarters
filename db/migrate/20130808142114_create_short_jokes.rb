class CreateShortJokes < ActiveRecord::Migration
  def change
    create_table :short_jokes do |t|
      t.string :contents
      t.integer :user_id

      t.timestamps
    end
  end
end
