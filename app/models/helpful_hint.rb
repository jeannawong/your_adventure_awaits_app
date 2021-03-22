class HelpfulHint < ApplicationRecord
  has_many :adventure_helpful_hints
  has_many :adventures, through: :adventure_helpful_hints
end
