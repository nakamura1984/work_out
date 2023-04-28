class Calender < ApplicationRecord
  has_many :memos
  belongs_to :user
end
