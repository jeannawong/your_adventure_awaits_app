class CreateHelpfulHints < ActiveRecord::Migration[6.0]
  def change
    create_table :helpful_hints do |t|
      t.string :hint
      t.string :description
      t.string :hint_symbol

      t.timestamps
    end
  end
end
