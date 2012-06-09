class AddSubjectToRequest < ActiveRecord::Migration
  def change
    add_column :responses, :subject, :string
  end
end
