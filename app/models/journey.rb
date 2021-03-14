class Journey < ApplicationRecord
  has_many :orders
  has_many :adventures
  has_many :images
end
