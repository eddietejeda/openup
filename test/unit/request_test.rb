# == Schema Information
#
# Table name: requests
#
#  id             :integer         not null, primary key
#  department_id  :integer
#  response_key   :string(255)
#  body           :text
#  responded_date :string(255)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#  subject        :string(255)
#  requester_id   :integer
#

require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
