class Machines      < ActiveRecord::Base
  has_many :transactions
  has_many :machines, :through => :tranactions

  # To change this template use File | Settings | File Templates.
end