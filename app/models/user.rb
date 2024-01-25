class User < ApplicationRecord
  has_secure_password

  has_many :progresses, dependent: :destroy
  has_many :enrollments, dependent: :destroy
  has_many :courses, through: :enrollments, dependent: :destroy
  has_many :announcements, dependent: :destroy
  has_many :projects, dependent: :destroy

  validates :full_name, presence: true, length: { maximum: 50 }
  validates :username, presence: true, length: { maximum: 20 }
  validates_uniqueness_of :username, case_sensitive: false
end
