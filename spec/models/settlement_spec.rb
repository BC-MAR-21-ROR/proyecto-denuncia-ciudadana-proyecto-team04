# == Schema Information
#
# Table name: settlements
#
#  id              :bigint           not null, primary key
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  municipality_id :bigint           not null
#
# Indexes
#
#  index_settlements_on_municipality_id  (municipality_id)
#
# Foreign Keys
#
#  fk_rails_...  (municipality_id => municipalities.id)
#
require 'rails_helper'

RSpec.describe Settlement, type: :model do
  describe 'valid factory' do
    it { expect(build(:settlement)).to be_valid }
  end

  describe 'associations' do
    it { should belong_to(:municipality) }
    it { should have_many(:postal_codes) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
