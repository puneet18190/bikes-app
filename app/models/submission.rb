# == Schema Information
#
# Table name: submissions
#
#  id         :integer          not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  phone      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Submission < ActiveRecord::Base
    attr_accessible :first_name, :last_name

    has_attachment  :avatar
    has_attachments :photos, :maximum => 3
  has_many :transactions
  has_many :machine, :through => :transactions
  accepts_nested_attributes_for :machine
end


  # To change this template use File | Settings | File Templates.
