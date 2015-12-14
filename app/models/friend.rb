require_dependency 'validators/email_validator.rb'

class Friend < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true, email: true

	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100#" }
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

	def get_avatar
		if !self.avatar.blank?
			ActionController::Base.helpers.image_tag self.avatar.url(:thumb)
		else
			'No image :/'
		end		
	end
end
