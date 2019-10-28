class Collection < ApplicationRecord
  validates :name, presence: true
  validates :picture, presence: true, format: {with: /\A.+\.((jpg)|(JPG))\Z/}
end
