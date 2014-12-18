class User < ActiveRecord::Base
    before_save {self.email = email.downcase}
    VALID_EMAIL_REG =/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :handle, presence: true, length: {maximum: 50},
        uniqueness: true
	validates :email, presence: true, length:{ maximum:255},
        format:{ with: VALID_EMAIL_REG },
        uniqueness: {case_sensitive: false}

	has_secure_password
    validates :password, length: { minimum: 6 }
end
