class Adventure < ApplicationRecord
  belongs_to :journey
  has_many :adventures_helpful_hints
  has_many :helpful_hints, through: :adventures_helpful_hints
end
