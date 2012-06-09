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
#

require 'test_helper'

class ResponseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
