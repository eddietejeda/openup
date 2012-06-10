class ChangeRequestForeignKey < ActiveRecord::Migration
  def change
    remove_foreign_key(:requests, :users)
    add_foreign_key(:requests, :requesters, :column => :requester_id)
  end
end
