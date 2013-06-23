# == Schema Information
#
# Table name: machines
#
#  id           :integer          not null, primary key
#  make         :string(255)
#  model        :string(255)
#  registration :string(255)
#  mileage      :string(255)
#  postcode     :string(255)
#  other        :text
#  value_wanted :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Machine < ActiveRecord::Base
  attr_accessible :make, :model

  has_many :transactions
  has_many :machine, :through => :transactions

  # To change this template use File | Settings | File Templates.
end
