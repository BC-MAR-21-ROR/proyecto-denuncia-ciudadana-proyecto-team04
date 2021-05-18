# == Schema Information
#
# Table name: states
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class State < ApplicationRecord
  has_many :municipalities

  validates :name, presence: true, uniqueness: true
end
