class User < ApplicationRecord
  has_secure_password

  has_one :progress, dependent: :destroy
  has_many :enrollments, dependent: :destroy
  has_many :courses, through: :enrollments, dependent: :destroy
  has_many :responses, dependent: :destroy

  validates :full_name, presence: true, length: { maximum: 50 }
  validates :username, presence: true, length: { maximum: 20 }
  validates_uniqueness_of :username, case_sensitive: false
end
