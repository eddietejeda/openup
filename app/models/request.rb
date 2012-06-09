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
  # attr_accessible :title, :body
  belongs_to :user

end
