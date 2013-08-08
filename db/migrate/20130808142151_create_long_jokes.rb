class CreateLongJokes < ActiveRecord::Migration
  def change
    create_table :long_jokes do |t|
      t.text :contents
      t.integer :user_id

      t.timestamps
    end
  end
end
