class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :member

  validates :content_, presence: true
end
