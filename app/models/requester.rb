class Requester < ActiveRecord::Base
  attr_accessible :name, :email, :mailing_address, :phone
  has_many :requests, dependent: :destroy
  
  before_save { |user| user.email = email.downcase }
  
  validates :name, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: { case_sensitive: false }
  validates :phone, presence: true
end
# == Schema Information
#
# Table name: requesters
#
#  id              :integer         not null, primary key
#  email           :string(255)
#  name            :string(255)
#  phone           :string(255)
#  mailing_address :text
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

