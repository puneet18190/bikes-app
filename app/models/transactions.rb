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

class Transactions < ActiveRecord::Base
  belongs_to :tranactions
  belongs_to :machines
  # To change this template use File | Settings | File Templates.
end
