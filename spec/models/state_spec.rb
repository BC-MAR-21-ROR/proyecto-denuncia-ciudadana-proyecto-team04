# == Schema Information
#
# Table name: states
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe State, type: :model do
  describe 'valid factory' do
    it { expect(build(:state)).to be_valid }
  end

  describe 'associations' do
    it { should have_many(:municipalities) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
  end
end
