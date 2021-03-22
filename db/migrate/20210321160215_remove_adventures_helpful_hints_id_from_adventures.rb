class RemoveAdventuresHelpfulHintsIdFromAdventures < ActiveRecord::Migration[6.0]
  def change
    remove_column :adventures, :adventures_helpful_hints_id, :integer
  end
end
