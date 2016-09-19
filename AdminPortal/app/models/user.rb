class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :email, :format => /@/
  has_secure_password
end
