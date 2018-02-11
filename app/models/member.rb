class Member < ApplicationRecord
  belongs_to :home
  has_many :posts, dependent: :destroy

  validates :terms_of_service, acceptance: true

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :clearance, numericality: { only_integer: true,
                                        message: 'invalid security clearance' }
end
