# == Schema Information
#
# Table name: sent_capsules
#
#  id                 :integer          not null, primary key
#  capsule_id         :integer
#  recipient_type     :string
#  ind_recipient_id   :integer
#  group_recipient_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class SentCapsule < ApplicationRecord
  validates :capsule_id, presence: true
  validates recipient_type, presence: true
end
