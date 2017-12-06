# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  name       :string
#  owner_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Group < ApplicationRecord
  validates :owner_id, presence: true
  validates :name, presence: true,
    uniqueness: {scope: :owner_id, message: "You already have a group with this name"}
end
