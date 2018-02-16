class Post < ApplicationRecord
  belongs_to :home
  belongs_to :member
  has_many :comments, dependent: :destroy

  validates :content_, presence: true
end
