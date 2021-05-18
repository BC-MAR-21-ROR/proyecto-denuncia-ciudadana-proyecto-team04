# == Schema Information
#
# Table name: municipalities
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  state_id   :bigint           not null
#
# Indexes
#
#  index_municipalities_on_state_id  (state_id)
#
# Foreign Keys
#
#  fk_rails_...  (state_id => states.id)
#
require 'rails_helper'

RSpec.describe Municipality, type: :model do
  describe 'valid factory' do
    it { expect(build(:municipality)).to be_valid }
  end

  describe 'associations' do
    it { should belong_to(:state) }
    it { should have_many(:settlements) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
