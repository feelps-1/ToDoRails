require 'rails_helper'

RSpec.describe Item, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:status) }
  end

  describe 'associations' do
    it { should belong_to(:list) }
  end
end
