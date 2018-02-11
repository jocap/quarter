class Member < ApplicationRecord
  belongs_to :home
  has_many :posts, dependent: :destroy

  validates :clearance, numericality: { only_integer: true,
                                        message: 'invalid security clearance' }
  validates :username, presence: true


  validates :terms_of_service, acceptance: true
end
