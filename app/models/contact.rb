class Contact < ActiveRecord::Base
	validates :name, :email, :city,:phone, :comment, :presence => true
end
