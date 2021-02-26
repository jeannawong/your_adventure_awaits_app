class CreateAdventureHelpfulHints < ActiveRecord::Migration[6.0]
  def change
    create_table :adventure_helpful_hints do |t|
      t.integer :adventure_id
      t.integer :helpful_hint_id

      t.timestamps
    end
  end
end
