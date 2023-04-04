# frozen_string_literal: true

json.extract! user, :id, :email, :name, :org_id, :org_type, :phone,
              :created_at, :updated_at
json.url user_url(user, format: :json)
