# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, uniqueness: true, email: true
  validates :first_name, :last_name, presence: true
end
