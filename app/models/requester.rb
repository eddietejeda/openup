class Requester < ActiveRecord::Base
  attr_accessible :name, :email, :mailing_address, :phone
  has_many :requests, dependent: :destroy
  
  before_save { |user| user.email = email.downcase }
  
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: { case_sensitive: false }
  validates :phone, presence: true
end
