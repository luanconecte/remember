class Annotation < ActiveRecord::Base
	belongs_to :friend

	validates :body, presence: true
end
