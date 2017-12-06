# == Schema Information
#
# Table name: group_members
#
#  id         :integer          not null, primary key
#  group_id   :integer
#  owner_id   :integer
#  friend_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GroupMember < ApplicationRecord
  validates :group_id, presence: true
  valdates :friend_id, presence: true
  validates :owner_id, presence: true
end
