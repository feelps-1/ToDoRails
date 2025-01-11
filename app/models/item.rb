class Item < ApplicationRecord
  belongs_to :list
  
  enum status: { to_do: 0, in_progress: 1, done: 2 }

  validates :status, presence: true
end
