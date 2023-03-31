class Carrier < ApplicationRecord
  has_many :users, as: :org
end
