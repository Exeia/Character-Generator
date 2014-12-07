class User < ActiveRecord::Base
    before_save {self.email = email.downcase}
    validates :handle, presence: true, length: {maximum: 50}

end
