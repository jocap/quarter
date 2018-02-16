class Home < ApplicationRecord
  serialize :required_fields, Array
  has_many :members, dependent: :destroy
  has_many :posts, dependent: :destroy

  validates :name_, presence: true
  validates :slug_, presence: true, uniqueness: true
  validates :terms_of_service, acceptance: true
end
