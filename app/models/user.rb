class User < ApplicationRecord
  belongs_to :org, polymorphic: true
  has_secure_password

  # todo: Find the right place to validate attributes and validate them
  # including org_type.
end
