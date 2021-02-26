class HelpfulHint < ApplicationRecord
  has_many :adventures_helpful_hints
  has_many :adventures, through: :adventures_helpful_hints
end
