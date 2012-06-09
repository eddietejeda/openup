class CleanupUserTable < ActiveRecord::Migration
  def change
    remove_column :users, :phone
    remove_column :users, :mailing_address
  end
end
