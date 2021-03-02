class User < ApplicationRecord
	attr_accessor :remember_token
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	has_many :reviews
	has_many :comments
	has_many :tours
	has_many :booking_tour
	has_many :rates
	has_many :likes
	has_many :requests
	has_many :oauth


	validates :name, presence: true, length: { maximum: 50 }
	validates :email, presence: true, length: { maximum: 255 },
	format: { with: VALID_EMAIL_REGEX }, uniqueness: true
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }

	before_save :downcase_email

	class << self
		def digest(string)
			cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
			BCrypt::Engine.cost
			BCrypt::Password.create(string, cost: cost)
		end

		def new_token
			SecureRandom.urlsafe_base64
		end

		def from_omniauth(auth)
			where(auth.(:provider, :uid)).first_or_initialize.tap do |user|
				user.provider = auth.provider
				user.user_id = auth.user_id
				user.name = auth.info.name
				user.email = auth.info.email
				user.oauth_token = auth.credentials.token
				user.password = auth["uid"]
				user.admin = false
				user.save!
			end
		end
	end

	def remember
		self.remember_token = User.new_token
		# update_attributes remember_digest: User.digest(remember_token)
	end

	def authenticated? remember_token
		return false if remember_digest.nil?
		BCrypt::Password.new(remember_digest).is_password?(remember_token)
	end

	def forget
		# update_attributes remember_digest: nil
	end

	def current_user? user
		user && user == self
	end

	private
	def downcase_email
		self.email = email.downcase
	end

end
