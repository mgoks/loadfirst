# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :carrier
  belongs_to :orderer, polymorphic: true
end
