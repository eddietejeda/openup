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

require 'test_helper'

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
