class Broker < ApplicationRecord
  has_many :users, as: :org
  has_many :orders, as: :orderer
end
