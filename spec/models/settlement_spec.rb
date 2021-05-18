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
  pending "add some examples to (or delete) #{__FILE__}"
end
