class User < ApplicationRecord
    validates :username, presence: true, length: { minimum: 3, maximum: 15 }
    validates :username, uniqueness: true
    has_secure_password
    has_many :messages
end
