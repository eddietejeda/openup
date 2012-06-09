# == Schema Information
#
# Table name: responses
#
#  id            :integer         not null, primary key
#  request_id    :integer
#  response_date :date
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#  status        :string(255)
#  body          :text
#

class Response < ActiveRecord::Base
  attr_accessible :status, :body
  belongs_to :request
  
  validates :status, presence: true
end
