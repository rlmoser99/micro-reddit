# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: true, length: { in: 4..14 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 6..20 }

  has_many :posts
end
