class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :request_id
      t.date :response_date
      t.timestamps
    end
    add_foreign_key(:responses, :requests, :column => :request_id)
  end
end
