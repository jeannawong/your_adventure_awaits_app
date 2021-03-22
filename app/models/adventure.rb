class Adventure < ApplicationRecord
  belongs_to :journey
  has_many :adventure_helpful_hints
  has_many :helpful_hints, through: :adventure_helpful_hints
end
