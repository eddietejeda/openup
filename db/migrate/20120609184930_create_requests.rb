class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :department_id
      t.string :response_key
      t.text :body
      t.string :responded_date      
      t.timestamps
    end
    add_foreign_key(:requests, :users, :column => :user_id)
    add_foreign_key(:requests, :responses, :column => :response_id)
    add_foreign_key(:requests, :departments, :column => :department_id)
  end
end
