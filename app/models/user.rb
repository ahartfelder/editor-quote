class User < ApplicationRecord
  belongs_to :company
  devise :database_authenticatable, :registerable, :validatable

  def name
    email.split("@").first.capitalize
  end
end
