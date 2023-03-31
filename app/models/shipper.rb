class Shipper < ApplicationRecord
  has_many :users, as: :org
end
