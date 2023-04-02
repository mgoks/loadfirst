# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :org, polymorphic: true
  has_secure_password

  # TODO: Find the right place to validate attributes and validate them
  # including org_type.
end
