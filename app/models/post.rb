class Post < ApplicationRecord
  belongs_to :home
  belongs_to :member
end
