# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
end
