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
  pending "add some examples to (or delete) #{__FILE__}"
end
