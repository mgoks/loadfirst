class Broker < ApplicationRecord
  has_many :users, as: :org
end
