class Patient < ApplicationRecord
    validates :first_name, :last_name, :date_of_birth, :gender, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :gender, inclusion: { in: %w[Male Female Other] }
end
