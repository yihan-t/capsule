# == Schema Information
#
# Table name: friends
#
#  id         :integer          not null, primary key
#  owner_id   :integer
#  friend_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Friend < ApplicationRecord
  validates :owner_id, presence: true
  validates :friend_id, presence: true
  belongs_to :owner
end
