# == Schema Information
#
# Table name: postal_codes
#
#  id            :bigint           not null, primary key
#  code          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  settlement_id :bigint           not null
#
# Indexes
#
#  index_postal_codes_on_settlement_id  (settlement_id)
#
# Foreign Keys
#
#  fk_rails_...  (settlement_id => settlements.id)
#
require 'rails_helper'

RSpec.describe PostalCode, type: :model do
  describe 'valid factory' do
    it { expect(build(:postal_code)).to be_valid }
  end

  describe 'associations' do
    it { should belong_to(:settlement) }
  end

  describe 'validations' do
    it { should validate_presence_of(:code) }
  end
end
