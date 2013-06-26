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

require 'test_helper'

class BikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
