class CreateAdventures < ActiveRecord::Migration[6.0]
  def change
    create_table :adventures do |t|
      t.string :title
      t.string :description
      t.string :cost
      t.string :time_of_day
      t.string :duration
      t.integer :adventures_helpful_hints_id
      t.string :memory_post
      t.string :memory_image
      t.integer :journey_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
