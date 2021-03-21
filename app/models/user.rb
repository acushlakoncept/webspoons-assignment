class User < ApplicationRecord
    enum status: { inactive: 'inactive', active: 'active' }
    validates :status, inclusion: { in: statuses.keys, message: 'Use "active" or "inactive"' }
    validates :title, :name, :email, presence: true, length: { minimum: 2 }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: { case_sensitive: false }
    validates :phone, presence: true, numericality: true
  
    scope :order_users, lambda {
                          order(updated_at: :desc).order(name: :asc).order(email: :asc).order(title: :asc).order(phone: :asc).order(status: :asc)
                        }
end
