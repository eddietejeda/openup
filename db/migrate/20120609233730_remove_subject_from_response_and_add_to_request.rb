class RemoveSubjectFromResponseAndAddToRequest < ActiveRecord::Migration
  def up
    remove_column :responses, :subject, :string
    add_column :requests, :subject, :string
  end

  def down
    add_column :responses, :subject, :string
    remove_column :requests, :subject, :string
  end
end
