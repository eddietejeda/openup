class RemoveRespondedDateFromRequests < ActiveRecord::Migration
  def change
    remove_column :requests, :responded_date
  end
end
