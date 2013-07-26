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
 # attr_accessible :avatar, :photos
 #   attr_accessible :first_name, :last_name, :email, :phone, :make, :model, :registration, :mileage, :postcode, :other, :value_wanted
  #  attr_accessible :first_name

  has_attachment  :avatar     , accept: [:jpg, :png, :gif]
  has_attachments :photos, :maximum => 3


  validates :first_name, :last_name, :email, :make, :model, :registration, :mileage, :postcode, :presence => true
    #validates :email, email_format: { message: "doesn't look like an email address" }  ,     :on => :create



end


  # To change this template use File | Settings | File Templates.
