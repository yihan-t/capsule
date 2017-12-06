# == Schema Information
#
# Table name: capsules
#
#  id          :integer          not null, primary key
#  name        :string
#  category    :string
#  media       :string
#  emotion     :string
#  description :string
#  owner_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Capsule < ApplicationRecord
end
