# == Schema Information
#
# Table name: departments
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Department < ActiveRecord::Base
  # attr_accessible :title, :body
end
