class Tour < ApplicationRecord
	before_save do
    self.convenient.gsub!(/[\[\]\"]/, "") if attribute_present?("convenient")
		self.furniture.gsub!(/[\[\]\"]/, "") if attribute_present?("furniture")
  end
	belongs_to :user
	has_many :booking_tour
	has_many :requests
	has_many :reviews
	has_many :comments
	has_many :rates
	has_many :likes
	has_one_attached :image
	enum host_user: [:draft, :publish]

	validates :title, presence: true, length: { maximum: 100 }
	validates :address, presence: true, length: { maximum: 150 }
	validates :phone_number, presence: true, length: { maximum: 20 }
	validates :price, presence: true, length: { maximum: 20 }
	validates :content, presence: true
	validates :description, presence: true, length: { maximum: 500 }
	validates :house_type, presence: true
	validates :convenient, presence: true
	validates :furniture, presence: true
	validates :rules, presence: true

	def display_image
		image.variant(resize_to_limit: [500, 500])
	end
end
