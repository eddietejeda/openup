# == Schema Information
#
# Table name: requests
#
#  id            :integer         not null, primary key
#  department_id :integer
#  response_key  :string(255)
#  body          :text
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#  subject       :string(255)
#  requester_id  :integer
#

class Request < ActiveRecord::Base
  attr_accessible :department_id, :subject, :body
  belongs_to :requester
  belongs_to :department
  
  has_many :responses, dependent: :destroy
  
  before_save :create_key
  
  def status
    self.responses.last.status if self.responses.any?
  end

  validates :department_id, presence: true
  validates :subject, presence: true
  validates :body, presence: true
  
  private
  
  def create_key
    self.response_key = SecureRandom.urlsafe_base64(16) unless self.response_key
  end
end
