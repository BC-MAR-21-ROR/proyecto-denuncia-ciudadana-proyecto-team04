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
class PostalCode < ApplicationRecord
  belongs_to :settlement
end
