# == Schema Information
#
# Table name: requests
#
#  id             :integer         not null, primary key
#  user_id        :integer
#  department_id  :integer
#  response_key   :string(255)
#  body           :text
#  responded_date :string(255)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

class Request < ActiveRecord::Base
  attr_accessible :department_id, :subject, :body
  belongs_to :user
  belongs_to :department
  
  has_many :responses, dependent: :destroy
  
  before_save :create_key

  validates :department_id, presence: true
  validates :subject, presence: true
  validates :body, presence: true
  
  private
  
  def create_key
    self.response_key = SecureRandom.urlsafe_base64(16) unless self.response_key
  end
end
