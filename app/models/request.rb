class Request < ApplicationRecord
  belongs_to :user
	belongs_to :tour
  enum status: [:not_set, :accepted, :rejected ]  
end
