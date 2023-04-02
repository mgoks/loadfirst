# frozen_string_literal: true

class Carrier < ApplicationRecord
  has_many :users, as: :org
  has_many :orders, dependent: :destroy
end
