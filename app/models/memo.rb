class Memo < ApplicationRecord
  belongs_to :calender
  belongs_to :user

  validates :title,  presence: true
  validates :content, presence: true
  validates :start_time, presence: true
end
