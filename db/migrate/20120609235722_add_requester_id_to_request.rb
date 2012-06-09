class AddRequesterIdToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :requester_id, :integer
    remove_column :requests, :user_id
  end
end
