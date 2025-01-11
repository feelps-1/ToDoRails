class Item < ApplicationRecord
  belongs_to :list
  
  enum :status, { to_do: 0, in_progress: 1, done: 2 }

  validates :status, presence: true

  after_initialize :set_default_status, if: :new_record?

  def set_default_status
    self.status ||= :to_do
  end
end
