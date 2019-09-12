class User < ApplicationRecord
    has_many :playlist
    validate :name,  presence: true
    validate :email, presence: true, uniqueness: true
end
