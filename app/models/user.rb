class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email format' }
  has_many :blogs

  def full_name
    first_name + " " + last_name
  end
end
