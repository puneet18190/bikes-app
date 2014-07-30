# == Schema Information
#
# Table name: bikes
#
#  id                  :integer          not null, primary key
#  make                :string(255)
#  model               :string(255)
#  mileage             :string(255)
#  location            :string(255)
#  sales               :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  attach_file_name    :string(255)
#  attach_content_type :string(255)
#  attach_file_size    :integer
#  attach_updated_at   :datetime
#  pic_file_name       :string(255)
#  pic_content_type    :string(255)
#  pic_file_size       :integer
#  pic_updated_at      :datetime
#

class Bike < ActiveRecord::Base
  #validates :name, :presence => true
  #3   validates :email, :presence => true
  attr_accessible :avatar,:photos, :sku
  attr_accessible :make, :model,:registration, :mileage, :postcode, :other, :value_wanted,:submission_id, :stock, :actual_purchase_price, :amend_description, :selling_price, :sold
  belongs_to :submission

 has_attachments :photos, :maximum => 3 , accept: [:jpg, :png, :gif]

  has_many :attachinary_files, as: :attachinariable,foreign_key: :attachinariable_id, primary_key: :sku, conditions: { scope: 'photos' }
  # attr_accessible :make, :model, :pic, :attach
  # has_attached_file :pic, :styles =>
  #          { :medium => "300x300>", :thumb => "100x100>" }
  # has_attached_file :attach
end
