class Item < ApplicationRecord
  default_scope { order(created_at: :asc) }

  belongs_to :list
  
end
