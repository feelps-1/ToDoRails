class Item < ApplicationRecord
  belongs_to :list
  
  enum :status, { a_fazer: 0, em_andamento: 1, terminado: 2 }

  validates :status, presence: true
  validates :content, presence: true

  after_initialize :set_default_status, if: :new_record?

  def set_default_status
    self.status ||= :a_fazer
  end
end
