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
class Settlement < ApplicationRecord
  belongs_to :municipality
  has_many :postal_codes

  validates :name, presence: true
end
