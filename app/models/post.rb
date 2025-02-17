# frozen_string_literal: true

class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
  validates :content, length: { minimum: 150 }
end
