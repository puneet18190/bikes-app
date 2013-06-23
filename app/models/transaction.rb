# == Schema Information
#
# Table name: transactions
#
#  id              :integer          not null, primary key
#  sub_customer_id :integer
#  bike_id         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Transaction < ActiveRecord::Base
  belongs_to :submission
  belongs_to :machine
  # To change this template use File | Settings | File Templates.
end
