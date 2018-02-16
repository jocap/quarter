class Member < ApplicationRecord
  belongs_to :home
  has_many :posts, dependent: :destroy

  validates :username_, presence: true, uniqueness: true
  has_secure_password
  validates :terms_of_service, acceptance: true
  validates :clearance, numericality: { only_integer: true,
                                        message: 'invalid security clearance' }
end
